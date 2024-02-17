module Main (main) where

import Backend.Eval (eval)
import Checker (checker)
import Lexer (lexer)
import Parser (parse, E (..))

main :: IO ()
main = do
  let tokens = lexer "let a = (A: Type) => (b: A) => if b then print \"hello\" else print \"world\" in let _ = (a <Bool | Int>) False in 123"
  case parse tokens of
    Ok ast -> case checker ast of
      Right resultT -> do
        print resultT
        result <- eval ast
        case result of
          Right v -> print v
          Left err -> print err
      Left err -> do
        print ast
        print err
    Failed err -> do
      print err
