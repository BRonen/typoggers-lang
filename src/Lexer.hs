module Lexer
    ( lexer
    ) where

import Data.Char (isDigit, isAlpha, isSpace)
import Parser (Token (..))

lexer :: String -> [Token]
lexer (':':cs) = TokenEq : lexer cs
lexer ('=':cs) = TokenEq : lexer cs
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('-':cs) = TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs
lexer (c:cs)
      | isSpace c = lexer cs
      | isAlpha c = lexName (c:cs)
      | isDigit c = lexNum (c:cs)
lexer _ = []

lexNum :: String -> [Token]
lexNum cs = TokenInt (read num) : lexer rest
      where (num,rest) = span isDigit cs

lexName :: String -> [Token]
lexName cs =
   case span isAlpha cs of
      ("let",rest) -> TokenLet : lexer rest
      ("in",rest)  -> TokenIn : lexer rest
      (name,rest)   -> TokenName name : lexer rest
