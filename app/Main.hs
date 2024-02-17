module Main (main) where

import Backend.Eval (eval)
import Checker (checker)
import Lexer (lexer)
import Parser (parse)

main :: IO ()
main = do
  let tokens = lexer "let a = (A: Type) => (b: A) => b + 3 in (a Int) 2"
  let ast = parse tokens
  case checker ast of
    Right resultT -> do
      print resultT
      result <- eval ast
      case result of
        Right v -> print v
        Left err -> print err
    Left err -> do
      print ast
      print err
