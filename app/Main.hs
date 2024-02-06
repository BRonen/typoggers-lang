module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (typeCheck)

main :: IO ()
main = do
    let tokens = lexer "let a: Function = (x: Int): Int => x + 2 in a 2 - 1"
    let ast = parse tokens
    case typeCheck ast of
        Right ast' -> print ast'
        Left err -> do
            print ast
            print err
