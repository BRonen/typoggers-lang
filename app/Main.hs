module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (checker)
import Backend.Eval (eval)

main :: IO ()
main = do
    -- let tokens = lexer "let apply = (x: Int -> Int) => x 2 in let double = (y: Int) => y * 2 in apply double"
    let tokens = lexer "let v = 2 in v"
    let ast = parse tokens
    case checker ast of
        Right resultT -> do
            print resultT
            eval ast
        Left err -> do
            print ast
            print err
