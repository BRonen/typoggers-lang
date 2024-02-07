module Checker (checker) where

import Data.Map as Map
import Parser (
    Expr (..),
    TypeDef (..),
    FuncDef (..),
    FuncApp (..),
    LowTerm (..),
    HighTerm (..),
    Factor (..)
    )

type Context = Map String String

checker :: Expr -> Either String Expr
checker = typeCheck Map.empty

typeCheck :: Context -> Expr -> Either String Expr
typeCheck ctx (TypeDef typedef) = do
    typedef' <- typeCheckTypeDef ctx typedef
    pure $ TypeDef typedef'
typeCheck ctx (Let name vartype value next) = do
    let ctx' = Map.insert name vartype ctx
    value' <- typeCheck ctx value
    next' <- typeCheck ctx' next
    pure $ Let name vartype value' next'

typeCheckTypeDef :: Context -> TypeDef -> Either String TypeDef
typeCheckTypeDef ctx (FuncDef funcdef) = do
    funcdef' <- typeCheckFuncDef ctx funcdef
    pure $ FuncDef funcdef'
typeCheckTypeDef ctx (Type name value next) = do
    next' <- typeCheck ctx next
    pure $ Type name value next'

typeCheckFuncDef :: Context -> FuncDef -> Either String FuncDef
typeCheckFuncDef ctx (FuncApp funcapp) = do
    funcapp' <- typeCheckFuncApp ctx funcapp
    pure $ FuncApp funcapp'
typeCheckFuncDef ctx (Def param paramT retT body) = do
    body' <- typeCheck ctx body
    pure $ Def param paramT retT body'

typeCheckFuncApp :: Context -> FuncApp -> Either String FuncApp
typeCheckFuncApp ctx (LowTerm lowterm) = do
    lowterm' <- typeCheckLowTerm ctx lowterm
    pure $ LowTerm lowterm'
typeCheckFuncApp ctx (App name param) = do
    param' <- typeCheck ctx param
    pure $ App name param'

typeCheckLowTerm :: Context -> LowTerm -> Either String LowTerm
typeCheckLowTerm ctx (HighTerm highterm) = do
    highterm' <- typeCheckHighTerm ctx highterm
    pure $ HighTerm highterm'
typeCheckLowTerm ctx (Plus x y) = do
    x' <- case x of
        HighTerm (Factor (Int x')) -> do
            x'' <- typeCheckHighTerm ctx $ Factor $ Int x'
            pure $ HighTerm x''
        HighTerm (Factor (Name x')) -> do
            case Map.lookup x' ctx of
                Just "Int" -> do
                    x'' <- typeCheckHighTerm ctx $ Factor $ Name x'
                    pure $ HighTerm x''
                _ -> Left "Trying to execute a Plus with a non-integer variable"
        HighTerm (Factor _) -> Left "Trying to execute a Plus with a non-integer value"
        _ -> typeCheckLowTerm ctx x
    y' <- case y of
        Factor (Int _) -> do
            y' <- typeCheckHighTerm ctx y
            pure y'
        Factor (Name y') -> do
            case Map.lookup y' ctx of
                Just "Int" -> do
                    pure $ Factor $ Name y'
                _ -> Left "Trying to execute a Plus with a non-integer variable"
        Factor _ -> Left "Trying to execute a Plus with a non-integer value"
        _ -> do
            y' <- typeCheckHighTerm ctx y
            pure y'
    pure $ Plus x' y'
typeCheckLowTerm ctx (Minus x y) = do
    x' <- case x of
        HighTerm (Factor (Int x')) -> do
            x'' <- typeCheckHighTerm ctx $ Factor $ Int x'
            pure $ HighTerm x''
        HighTerm (Factor (Name x')) -> do
            case Map.lookup x' ctx of
                Just "Int" -> do
                    x'' <- typeCheckHighTerm ctx $ Factor $ Name x'
                    pure $ HighTerm x''
                _ -> Left "Trying to execute a Minus with a non-integer variable"
        HighTerm (Factor _) -> Left "Trying to execute a Minus with a non-integer value"
        _ -> typeCheckLowTerm ctx x
    y' <- case y of
        Factor (Int _) -> do
            y' <- typeCheckHighTerm ctx y
            pure y'
        Factor (Name y') -> do
            case Map.lookup y' ctx of
                Just "Int" -> do
                    pure $ Factor $ Name y'
                _ -> Left "Trying to execute a Minus with a non-integer variable"
        Factor _ -> Left "Trying to execute a Minus with a non-integer value"
        _ -> do
            y' <- typeCheckHighTerm ctx y
            pure y'
    pure $ Minus x' y'
 
typeCheckHighTerm :: Context -> HighTerm -> Either String HighTerm
typeCheckHighTerm ctx (Factor factor) = do
    factor' <- typeCheckFactor ctx factor
    pure $ Factor factor'
typeCheckHighTerm ctx (Div x y) = do
    x' <- case x of
        Factor (Int x') -> do
            x'' <- typeCheckFactor ctx $ Int x'
            pure $ Factor x''
        Factor (Name x') -> do
            case Map.lookup x' ctx of
                Just "Int" -> do
                    x'' <- typeCheckFactor ctx $ Name x'
                    pure $ Factor x''
                _ -> Left "Trying to execute a Division with a non-integer variable"
        Factor _ -> Left "Trying to execute a Division with a non-integer value"
        _ -> typeCheckHighTerm ctx x
    y' <- case y of
        Int _ -> do
            y' <- typeCheckFactor ctx y
            pure y'
        Name y' -> do
            case Map.lookup y' ctx of
                Just "Int" -> do
                    pure y
                _ -> Left "Trying to execute a Division with a non-integer variable"
        _ -> Left "Trying to execute a Division with a non-integer value"
    pure $ Times x' y'
typeCheckHighTerm ctx (Times x y) = do
    x' <- case x of
        Factor (Int x') -> do
            x'' <- typeCheckFactor ctx $ Int x'
            pure $ Factor x''
        Factor (Name x') -> do
            case Map.lookup x' ctx of
                Just "Int" -> do
                    x'' <- typeCheckFactor ctx $ Name x'
                    pure $ Factor x''
                _ -> Left "Trying to execute a Multiplication with a non-integer variable"
        Factor _ -> Left "Trying to execute a Multiplication with a non-integer value"
        _ -> typeCheckHighTerm ctx x
    y' <- case y of
        Int _ -> do
            y' <- typeCheckFactor ctx y
            pure y'
        Name y' -> do
            case Map.lookup y' ctx of
                Just "Int" -> do
                    pure y
                _ -> Left "Trying to execute a Multiplication with a non-integer variable"
        _ -> Left "Trying to execute a Multiplication with a non-integer value"
    pure $ Times x' y'

typeCheckFactor :: Context -> Factor -> Either String Factor
typeCheckFactor ctx (Brack expr) = do
    expr' <- typeCheck ctx expr
    pure $ Brack expr'
typeCheckFactor _ a = Right a
