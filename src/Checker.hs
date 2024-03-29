module Checker (TypeValue, checker) where

import Data.Map as Map
import Parser
  ( SExpr (..),
  )

data TypeValue
  = TInt
  | TString
  | TBool
  | TFunction TypeValue TypeValue
  | TGeneric String (TypeValue -> Either String TypeValue)
  | TTypeHole
  | TType TypeValue
  | TUnion TypeValue TypeValue
  | TIntersection TypeValue TypeValue

instance Show TypeValue where
  show (TIntersection a b) = "TIntersection<" ++ show a ++ " + " ++ show b ++ ">"
  show (TFunction a b) = "TFunction<" ++ show a ++ "><" ++ show b ++ ">"
  show (TUnion a b) = "TUnion<" ++ show a ++ " + " ++ show b ++ ">"
  show (TGeneric a _) ="TGeneric<" ++ show a ++ ">"
  show (TType a) = "TType<" ++ show a ++  ">"
  show TInt = "TInt"
  show TString = "TString"
  show TBool = "TBool"
  show TTypeHole = "TTypeHole"

instance Eq TypeValue where
  received == expected = case (received, expected) of
    (TIntersection left right, _) -> left == expected || right == expected
    (TUnion left right, _) -> left == expected && right == expected
    (_, TIntersection left right) -> received == left && received == right
    (_, TUnion left right) -> received == left || received == right
    (TFunction param ret, TFunction param' ret') -> param == param' && ret == ret'
    (TType received', TType expected') -> received' == expected'
    (TString, TString) -> True
    (TBool, TBool) -> True
    (TInt, TInt) -> True
    (TType _, TTypeHole) -> True
    (TTypeHole, TType _) -> True
    _ -> False

type Context = Map String TypeValue

checker :: SExpr -> Either String TypeValue
checker = typeCheck baseCtx
  where
    baseCtx = fromList [
      ("print", TFunction TString TString)
      ]

typeCheck :: Context -> SExpr -> Either String TypeValue
typeCheck ctx (SLetInfer name value next) = do
  value' <- typeCheck ctx value
  let ctx' = Map.insert name value' ctx
  typeCheck ctx' next
typeCheck ctx (SLet name expectedT value next) = do
  expectedT' <- typeCheck ctx expectedT
  receivedT <- typeCheck ctx value
  let ctx' = Map.insert name receivedT ctx
  if receivedT == expectedT'
    then typeCheck ctx' next
    else Left $ "Var<" ++ name ++ "> of type <" ++ show expectedT' ++ "> trying to be assigned with <" ++ show receivedT ++ ">"
typeCheck ctx (STypeAlias name t next) = do
  t' <- typeCheck ctx t
  let ctx' = Map.insert name (TType t') ctx
  typeCheck ctx' next
typeCheck ctx (SDefInfer param (SType "Type") body) = do
  let body' arg = typeCheck (Map.insert param arg ctx) body
  pure $ TGeneric param body'
typeCheck ctx (SDefInfer param paramT body) = do
  paramT' <- typeCheck ctx paramT
  let ctx' = Map.insert param paramT' ctx
  receivedT <- typeCheck ctx' body
  pure $ TFunction paramT' receivedT
typeCheck ctx (SDef param paramT retT body) = do
  paramT' <- typeCheck ctx paramT
  retT' <- typeCheck ctx retT
  let ctx' = Map.insert param paramT' ctx
  receivedT <- typeCheck ctx' body
  if receivedT == retT'
    then pure $ TFunction paramT' retT'
    else Left $ "Function returning <" ++ show retT' ++ "> but body with type <" ++ show receivedT ++ ">"
typeCheck ctx (SConditional _ cthen celse) = do
  cthenT <- typeCheck ctx cthen
  celseT <- typeCheck ctx celse
  pure $ TUnion cthenT celseT
typeCheck ctx (SApp func received) = do
  funcT <- typeCheck ctx func
  case funcT of
    TGeneric _ body -> do
      receivedT <- typeCheck ctx received
      body $ TType receivedT
    TFunction expectedT retT -> do
      receivedT <- typeCheck ctx received
      if receivedT == expectedT
        then pure retT
        else Left $ "Trying to call Function<" ++ show func ++ "><" ++ show expectedT ++ "> with Param<" ++ show receivedT ++ ">"
    t -> Left $ "Applying invalid variable <" ++ show func ++ "> of type <" ++ show t ++ ">"
typeCheck ctx (SPlus x y) = do
  x' <- typeCheck ctx x
  y' <- typeCheck ctx y
  if x' == TInt && y' == TInt 
    then pure TInt
    else Left $ "Calling sum with invalid params: [ " ++ show x' ++ " - " ++ show y ++ " ]"
typeCheck ctx (SMinus x y) = do
  x' <- typeCheck ctx x
  y' <- typeCheck ctx y
  if x' == TInt && y' == TInt 
    then pure TInt
    else Left $ "Calling subtraction with invalid params: [ " ++ show x' ++ " - " ++ show y' ++ " ]"
typeCheck ctx (SDiv x y) = do
  x' <- typeCheck ctx x
  y' <- typeCheck ctx y
  if x' == TInt && y' == TInt 
    then pure TInt
    else Left $ "Calling division with invalid params: [ " ++ show x' ++ " - " ++ show y ++ " ]"
typeCheck ctx (STimes x y) = do
  x' <- typeCheck ctx x
  y' <- typeCheck ctx y
  if x' == TInt && y' == TInt 
    then pure TInt
    else Left $ "Calling multiplication with invalid params: [ " ++ show x' ++ " - " ++ show y' ++ " ]"
typeCheck ctx (SAnd x y) = do
  x' <- typeCheck ctx x
  y' <- typeCheck ctx y
  pure $ TUnion x' y'
typeCheck ctx (SOr x y) = do
  x' <- typeCheck ctx x
  y' <- typeCheck ctx y
  pure $ TUnion x' y'
typeCheck ctx (SBrack expr) = typeCheck ctx expr
typeCheck ctx (SName name) = case Map.lookup name ctx of
  Just t -> Right t
  Nothing -> Left $ "Variable not initialized: " ++ name
typeCheck _ (SInt _) = Right TInt
typeCheck _ (SBool _) = Right TBool
typeCheck _ (SString _) = Right TString
typeCheck ctx (STypeIntersection l r) = do
  l' <- typeCheck ctx l
  r' <- typeCheck ctx r
  pure $ TIntersection l' r'
typeCheck ctx (STypeUnion l r) = do
  l' <- typeCheck ctx l
  r' <- typeCheck ctx r
  pure $ TUnion l' r'
typeCheck ctx (STypeof expr) = typeCheck ctx expr
typeCheck _ (SType "Int") = Right TInt
typeCheck _ (SType "String") = Right TString
typeCheck _ (SType "Bool") = Right TBool
typeCheck _ (SType "Type") = Right TTypeHole
typeCheck ctx (SType t) = do
  case Map.lookup t ctx of
    Just (TType t') -> Right t'
    Just (TTypeHole) -> Right TTypeHole
    Just t' -> Left $ "Trying to type with a value <" ++ t ++ "> as: " ++ show t'
    Nothing -> Left $ "Type not implemented: " ++ t
typeCheck ctx (STypeFunc t r) = do
  t' <- typeCheck ctx t
  r' <- typeCheck ctx r
  pure $ TFunction t' r'
