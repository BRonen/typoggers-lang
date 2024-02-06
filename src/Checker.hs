module Checker (typeCheck) where

import Parser (
    Expr (..),
    TypeDef (..),
    FuncDef (..),
    FuncApp (..),
    LowTerm (..),
    HighTerm (..),
    Factor (..)
    )

-- TODO: Add variable type checking using a type context

typeCheck :: Expr -> Either String Expr
typeCheck (TypeDef typedef) = do
    typedef' <- typeCheckTypeDef typedef
    pure $ TypeDef typedef'
typeCheck (Let name vartype value next) = do
    value' <- typeCheck value
    next' <- typeCheck next
    pure $ Let name vartype value' next'

typeCheckTypeDef :: TypeDef -> Either String TypeDef
typeCheckTypeDef (FuncDef funcdef) = do
    funcdef' <- typeCheckFuncDef funcdef
    pure $ FuncDef funcdef'
typeCheckTypeDef (Type name value next) = do
    next' <- typeCheck next
    pure $ Type name value next'

typeCheckFuncDef :: FuncDef -> Either String FuncDef
typeCheckFuncDef (FuncApp funcapp) = do
    funcapp' <- typeCheckFuncApp funcapp
    pure $ FuncApp funcapp'
typeCheckFuncDef (Def param paramT retT body) = do
    body' <- typeCheck body
    pure $ Def param paramT retT body'

typeCheckFuncApp :: FuncApp -> Either String FuncApp
typeCheckFuncApp (LowTerm lowterm) = do
    lowterm' <- typeCheckLowTerm lowterm
    pure $ LowTerm lowterm'
typeCheckFuncApp (App name param) = do
    param' <- typeCheck param
    pure $ App name param'

typeCheckLowTerm :: LowTerm -> Either String LowTerm
typeCheckLowTerm (HighTerm highterm) = do
    highterm' <- typeCheckHighTerm highterm
    pure $ HighTerm highterm'
typeCheckLowTerm (Plus x y) = do
    x' <- case x of
        HighTerm (Factor (Int x')) -> do
            x'' <- typeCheckHighTerm $ Factor $ Int x'
            pure $ HighTerm x''
        HighTerm (Factor _) -> Left "Trying to execute a Plus with a non-integer value"
        _ -> typeCheckLowTerm x
    y' <- case y of
        Factor (Int _) -> do
            y' <- typeCheckHighTerm y
            pure y'
        Factor _ -> Left "Trying to execute a Plus with a non-integer value"
        _ -> do
            y' <- typeCheckHighTerm y
            pure y'
    pure $ Plus x' y'
typeCheckLowTerm (Minus x y) = do
    x' <- case x of
        HighTerm (Factor (Int x')) -> do
            x'' <- typeCheckHighTerm $ Factor $ Int x'
            pure $ HighTerm x''
        HighTerm (Factor _) -> Left "Trying to execute a Minus with a non-integer value"
        _ -> typeCheckLowTerm x
    y' <- case y of
        Factor (Int _) -> do
            y' <- typeCheckHighTerm y
            pure y'
        Factor _ -> Left "Trying to execute a Minus with a non-integer value"
        _ -> do
            y' <- typeCheckHighTerm y
            pure y'
    pure $ Minus x' y'
 
typeCheckHighTerm :: HighTerm -> Either String HighTerm
typeCheckHighTerm (Factor factor) = do
    factor' <- typeCheckFactor factor
    pure $ Factor factor'
typeCheckHighTerm (Div x y) = do
    x' <- case x of
        Factor (Int x') -> do
            x'' <- typeCheckFactor $ Int x'
            pure $ Factor x''
        Factor _ -> Left "Trying to execute a Division with a non-integer value"
        _ -> typeCheckHighTerm x
    y' <- case y of
        Int _ -> do
            y' <- typeCheckFactor y
            pure y'
        _ -> Left "Trying to execute a Division with a non-integer value"
    pure $ Times x' y'
typeCheckHighTerm (Times x y) = do
    x' <- case x of
        Factor (Int x') -> do
            x'' <- typeCheckFactor $ Int x'
            pure $ Factor x''
        Factor _ -> Left "Trying to execute a Multiplication with a non-integer value"
        _ -> typeCheckHighTerm x
    y' <- case y of
        Int _ -> do
            y' <- typeCheckFactor y
            pure y'
        _ -> Left "Trying to execute a Multiplication with a non-integer value"
    pure $ Times x' y'

typeCheckFactor :: Factor -> Either String Factor
typeCheckFactor (Brack expr) = do
    expr' <- typeCheck expr
    pure $ Brack expr'
typeCheckFactor a = Right a
