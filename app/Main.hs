module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (typeCheck)

main :: IO ()
main = do
    let ast = parse $ (lexer "let a: A = 2 + 2 in 2 - 1")
    case typeCheck ast of
        Right ast' -> print ast'
        Left err -> do
            print ast
            print err
