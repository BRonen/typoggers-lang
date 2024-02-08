module Lexer
    ( lexer
    ) where

import Data.Char (isDigit, isSpace)
import Parser (Token (..))

lexer :: String -> [Token]
lexer ('/':'/':cs) = lexComment cs
lexer ('T':'r':'u':'e':cs) = TokenBool True : lexer cs
lexer ('F':'a':'l':'s':'e':cs) = TokenBool False : lexer cs
lexer ('=':'>':cs) = TokenFatArrow : lexer cs
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer ('"':cs) = TokenQuote : lexStr cs
lexer ('=':cs) = TokenEq : lexer cs
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('-':cs) = TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs
lexer (c:cs)
      | isSpace c = lexer cs
      | isDigit c = lexNum (c:cs)
      | otherwise = lexLiteral (c:cs)
lexer _ = []

lexNum :: String -> [Token]
lexNum cs = TokenInt (read num) : lexer rest
      where (num, rest) = span isDigit cs

lexStr :: String -> [Token]
lexStr cs = TokenString c : TokenQuote : (lexer $ tail rest)
      where (c, rest) = span (\c' -> c' /= '"') cs

lexLiteral :: String -> [Token]
lexLiteral cs =
   case literal of
      "let" -> TokenLet : lexer rest
      "type" -> TokenType : lexer rest
      "in" -> TokenIn : lexer rest
      _ -> TokenLiteral literal : lexer rest
      where
            (literal, rest) = span (\c -> not $ elem c [':', ' ']) cs

lexComment :: String -> [Token]
lexComment cs = lexer rest
      where (_, rest) = span (\c -> c /= '\n') cs
