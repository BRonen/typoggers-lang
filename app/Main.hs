module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (checker)
import Backend.Eval (eval)

main :: IO ()
main = do
    let tokens = lexer "let value: Bool = True in let apply = (x: (Int -> typeof value)) => x 2 in apply ((y: Int) => value)"
    let ast = parse tokens
    case checker ast of
        Right resultT -> do
            print resultT
            eval ast
        Left err -> do
            print ast
            print err
