module Checker (checker) where

import Data.Map as Map
import Parser (
    Expr (..),
    TypeDef (..),
    FuncDef (..),
    FuncApp (..),
    LowTerm (..),
    HighTerm (..),
    Factor (..),
    TypeNote (..)
    )

data TypeValue
    = TInt
    | TString
    | TBool
    | TFunction TypeValue TypeValue
    | TType TypeValue
    deriving (Show, Eq)

type Context = Map String TypeValue

checker :: Expr -> Either String TypeValue
checker = typeCheck baseCtx
    where
        baseCtx = fromList [("print", TFunction TString TString)]

typeCheck :: Context -> Expr -> Either String TypeValue
typeCheck ctx (TypeDef typedef) = typeCheckTypeDef ctx typedef
typeCheck ctx (LetInfer name value next) = do
    value' <- typeCheck ctx value
    let ctx' = Map.insert name value' ctx
    typeCheck ctx' next
typeCheck ctx (Let name t value next) = do
    t' <- typeCheckTypeNote ctx t
    let ctx' = Map.insert name t' ctx
    value' <- typeCheck ctx value
    if value' == t'
        then typeCheck ctx' next
        else Left $ "Var<" ++ name ++ "> of type <" ++ show t' ++ "> trying to be assigned with <" ++ show value' ++ ">"

typeCheckTypeDef :: Context -> TypeDef -> Either String TypeValue
typeCheckTypeDef ctx (FuncDef funcdef) = typeCheckFuncDef ctx funcdef
typeCheckTypeDef ctx (TypeAlias name t next) = do
    t' <- typeCheckTypeNote ctx t
    let ctx' = Map.insert name (TType t') ctx
    typeCheck ctx' next

typeCheckFuncDef :: Context -> FuncDef -> Either String TypeValue
typeCheckFuncDef ctx (FuncApp funcapp) = typeCheckFuncApp ctx funcapp
typeCheckFuncDef ctx (DefInfer param paramT body) = do
    paramT' <- typeCheckTypeNote ctx paramT
    let ctx' = Map.insert param paramT' ctx
    bodyT <- typeCheck ctx' body
    pure $ TFunction paramT' bodyT
typeCheckFuncDef ctx (Def param paramT retT body) = do
    paramT' <- typeCheckTypeNote ctx paramT
    retT' <- typeCheckTypeNote ctx retT
    let ctx' = Map.insert param paramT' ctx
    bodyT <- typeCheck ctx' body
    if bodyT == retT'
        then pure $ TFunction paramT' retT'
        else Left $ "Function returning <" ++ show retT' ++ "> but body with type <" ++ show bodyT ++ ">"

typeCheckFuncApp :: Context -> FuncApp -> Either String TypeValue
typeCheckFuncApp ctx (LowTerm lowterm) = typeCheckLowTerm ctx lowterm
typeCheckFuncApp ctx (App name param) = do
    case Map.lookup name ctx of
        Just (TFunction argT retT) -> do
            paramT <- typeCheck ctx param
            if argT == paramT
                then pure retT
                else Left $ "Trying to call Function<" ++ name ++ "><" ++ show argT ++ "> with Param<" ++ show paramT ++ ">"
        Just t -> Left $ "Applying invalid variable <" ++ name ++ "> of type <" ++ show t ++ ">"
        Nothing -> Left $ "Variable not initialized: " ++ name

typeCheckLowTerm :: Context -> LowTerm -> Either String TypeValue
typeCheckLowTerm ctx (HighTerm highterm) = typeCheckHighTerm ctx highterm
typeCheckLowTerm ctx (Plus x y) = do
    x' <- case x of
        HighTerm (Factor x') -> typeCheckFactor ctx x'
        _ -> typeCheckLowTerm ctx x
    y' <- typeCheckHighTerm ctx y
    case (x', y') of
        (TInt, TInt) -> pure TInt
        _ -> Left $ "Calling sum with invalid params: [ " ++ show x' ++ " - " ++ show y ++ " ]"
typeCheckLowTerm ctx (Minus x y) = do
    x' <- case x of
        HighTerm (Factor x') -> typeCheckFactor ctx x'
        _ -> typeCheckLowTerm ctx x
    y' <- typeCheckHighTerm ctx y
    case (x', y') of
        (TInt, TInt) -> pure TInt
        _ -> Left $ "Calling subtraction with invalid params: [ " ++ show x' ++ " - " ++ show y' ++ " ]"
 
typeCheckHighTerm :: Context -> HighTerm -> Either String TypeValue
typeCheckHighTerm ctx (Factor factor) = typeCheckFactor ctx factor
typeCheckHighTerm ctx (Div x y) = do
    x' <- case x of
        Factor x' -> typeCheckFactor ctx x'
        _ -> typeCheckHighTerm ctx x
    y' <- typeCheckFactor ctx y
    case (x', y') of
        (TInt, TInt) -> pure TInt
        _ -> Left $ "Calling division with invalid params: [ " ++ show x' ++ " - " ++ show y ++ " ]"
typeCheckHighTerm ctx (Times x y) = do
    x' <- case x of
        Factor x' -> typeCheckFactor ctx x'
        _ -> typeCheckHighTerm ctx x
    y' <- typeCheckFactor ctx y
    case (x', y') of
        (TInt, TInt) -> pure TInt
        _ -> Left $ "Calling multiplication with invalid params: [ " ++ show x' ++ " - " ++ show y' ++ " ]"

typeCheckFactor :: Context -> Factor -> Either String TypeValue
typeCheckFactor ctx (Brack expr) = typeCheck ctx expr
typeCheckFactor ctx (Name name) = case Map.lookup name ctx of
    Just t -> Right t
    Nothing -> Left $ "Variable not initialized: " ++ name
typeCheckFactor _ (Int _) = Right TInt
typeCheckFactor _ (Bool _) = Right TBool
typeCheckFactor _ (String _) = Right TString

typeCheckTypeNote :: Context -> TypeNote -> Either String TypeValue
typeCheckTypeNote ctx (Typeof expr) = typeCheck ctx expr
typeCheckTypeNote _ (Type "Int") = Right TInt
typeCheckTypeNote _ (Type "String") = Right TString
typeCheckTypeNote _ (Type "Bool") = Right TBool
typeCheckTypeNote ctx (Type t) = do
    case Map.lookup t ctx of
        Just (TType t') -> Right t'
        Just t' -> Left $ "Trying to type with a value <" ++ t ++ "> as:" ++ show t'
        Nothing -> Left $ "Type not implemented: " ++ t
typeCheckTypeNote ctx (TypeFunc t r) = do
    t' <- typeCheckTypeNote ctx $ Type t
    r' <- typeCheckTypeNote ctx r
    pure $ TFunction t' r'