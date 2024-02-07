module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (checker)
import Backend.Eval (eval)

main :: IO ()
main = do
    -- let tokens = lexer "let a: Int = 2 in a * 1"
    let tokens = lexer "let a: Function = (x: Int): Int => x in let b: Int = 3 in let c: Bool = True in (c b)"
    let ast = parse tokens
    case checker ast of
        Right resultT -> do
            print resultT
            eval ast
        Left err -> do
            print ast
            print err
