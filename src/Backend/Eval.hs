module Backend.Eval (eval) where

import Data.Map as Map
import Parser (
    SExpr (..)
    )

data Value
    = Int Integer
    | Str String
    | Boolean Bool
    | Var String
    | Func Context String SExpr
    deriving (Show)

type Context = Map String Value

eval :: SExpr -> IO (Either String Value)
eval = evaluate Map.empty

evaluate :: Context -> SExpr -> IO (Either String Value)
evaluate ctx (SLetInfer name value next) = do
    value' <- evaluate ctx value
    case value' of
        Right value'' -> do
            let ctx' = Map.insert name value'' ctx
            evaluate ctx' next
        Left err -> pure $ Left err
evaluate ctx (SLet name _ value next) = do
    value' <- evaluate ctx value
    case value' of
        Right value'' -> do
            let ctx' = Map.insert name value'' ctx
            evaluate ctx' next
        Left err -> pure $ Left err

evaluate ctx (STypeAlias _ _ next) = evaluate ctx next

evaluate ctx (SDefInfer param _ body) = pure $ Right $ Func ctx param body
evaluate ctx (SDef param _ _ body) = pure $ Right $ Func ctx param body

evaluate ctx (SConditional condition cthen celse) = do
    conditional <- evaluate ctx condition
    case conditional of
        Right (Int 0) -> evaluate ctx celse
        Right (Str "") -> evaluate ctx celse
        Right (Boolean False) -> evaluate ctx celse
        Right _ -> evaluate ctx cthen
        Left err -> pure $ Left err

evaluate ctx (SApp func arg) = do
    func' <- evaluate ctx func
    case func' of
        Right (Func ctx' param body) -> do
            arg' <- evaluate ctx arg
            case arg' of
                Right arg'' -> evaluate (Map.insert param arg'' ctx') body
                Left err -> pure $ Left err
        Left _ -> pure func'
        _ -> pure $ Left $ "Trying to call a non-callable value: " ++ show func

evaluate ctx (SPlus x y) = do
    x' <- evaluate ctx x
    y' <- evaluate ctx y
    case (x', y') of
        (Right (Int v), Right (Int v')) -> pure $ Right $ Int $ v + v'
        _ -> pure $ Left $ "Calling sum with invalid params: [ " ++ show x' ++ " - " ++ show y ++ " ]"
evaluate ctx (SMinus x y) = do
    x' <- evaluate ctx x
    y' <- evaluate ctx y
    case (x', y') of
        (Right (Int v), Right (Int v')) -> pure $ Right $ Int $ v - v'
        _ -> pure $ Left $ "Calling subtraction with invalid params: [ " ++ show x' ++ " - " ++ show y' ++ " ]"

evaluate ctx (SDiv x y) = do
    x' <- evaluate ctx x
    y' <- evaluate ctx y
    case (x', y') of
        (Right (Int v), Right (Int v')) -> pure $ Right $ Int $ v `div` v'
        _ -> pure $ Left $ "Calling division with invalid params: [ " ++ show x' ++ " - " ++ show y ++ " ]"
evaluate ctx (STimes x y) = do
    x' <- evaluate ctx x
    y' <- evaluate ctx y
    case (x', y') of
        (Right (Int v), Right (Int v')) -> pure $ Right $ Int $ v * v'
        _ -> pure $ Left $ "Calling multiplication with invalid params: [ " ++ show x' ++ " - " ++ show y' ++ " ]"

evaluate ctx (SAnd x y) = do
    x' <- evaluate ctx x
    y' <- evaluate ctx y
    case (x', y') of
        (Right (Int 0), Right _) -> pure x'
        (Right (Str ""), Right _) -> pure x'
        (Right (Boolean False), Right _) -> pure x'
        (Right _, Right _) -> pure y'
        (Left err, _) -> pure $ Left err
        (_, Left err) -> pure $ Left err

evaluate ctx (SOr x y) = do
    x' <- evaluate ctx x
    y' <- evaluate ctx y
    case (x', y') of
        (Right (Int 0), Right _) -> pure y'
        (Right (Str ""), Right _) -> pure y'
        (Right (Boolean False), Right _) -> pure y'
        (Right _, Right _) -> pure x'
        (Left err, _) -> pure $ Left err
        (_, Left err) -> pure $ Left err

evaluate ctx (SBrack expr) = evaluate ctx expr
evaluate ctx (SName name) = case Map.lookup name ctx of
    Just expr -> pure $ Right expr
    Nothing -> pure $ Left $ "Variable not initialized: " ++ name
evaluate _ (SInt v) = pure $ Right $ Int v
evaluate _ (SBool v) = pure $ Right $ Boolean v
evaluate _ (SString v) = pure $ Right $ Str v 

evaluate _ s = do
    pure $ Left $ "Evaluating invalid node: " ++ show s
