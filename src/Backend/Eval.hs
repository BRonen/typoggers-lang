module Backend.Eval (eval) where

import Parser (Expr (..))

eval :: Expr -> IO ()
eval expr = print expr
