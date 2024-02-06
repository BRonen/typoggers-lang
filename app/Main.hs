module Main (main) where

import Parser (parse)
import Lexer (lexer)

main :: IO ()
main = print $ parse $ (lexer "let a = 2 + 2 in a - 1")
