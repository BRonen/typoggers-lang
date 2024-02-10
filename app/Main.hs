module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (checker)
import Backend.Eval (eval)

main :: IO ()
main = do
    let tokens = lexer "let a: (String -> String) & (Int -> Int) = (x: Int | String) => x in a"
    let ast = parse tokens
    case checker ast of
        Right resultT -> do
            print resultT
            eval ast
        Left err -> do
            print ast
            print err
