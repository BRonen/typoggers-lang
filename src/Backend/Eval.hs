module Backend.Eval (eval) where

import Parser (SExpr (..))

eval :: SExpr -> IO ()
eval expr = print expr
