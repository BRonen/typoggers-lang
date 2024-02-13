module Main (main) where

import Parser (parse)
import Lexer (lexer)
import Checker (checker)
import Backend.Eval (eval)

main :: IO ()
main = do
    let tokens = lexer "type A = Int in let a: Bool & A | Bool = if False then 1 else False in a"
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
