module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (checker)
import Backend.Eval (eval)

main :: IO ()
main = do
    let tokens = lexer "let a = (x: Int): Int => x in let b = (y: Int): Bool => True in b (2 + 3)"
    let ast = parse tokens
    case checker ast of
        Right resultT -> do
            print resultT
            eval ast
        Left err -> do
            print ast
            print err
