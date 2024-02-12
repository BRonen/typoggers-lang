module Lexer
    ( Token (..),
      lexer
    ) where

import Data.Char (isDigit, isSpace)

data Token
      = TokenLet
      | TokenType
      | TokenTypeof
      | TokenIn
      | TokenInt Int
      | TokenBool Bool
      | TokenString String
      | TokenLiteral String
      | TokenQuote
      | TokenFatArrow
      | TokenArrow
      | TokenEq
      | TokenPlus
      | TokenMinus
      | TokenTimes
      | TokenDiv
      | TokenOB
      | TokenCB
      | TokenColon
      | TokenOr
      | TokenAnd
      | TokenPipe
      | TokenAmpersand
      | TokenIf
      | TokenElse
      deriving Show

lexer :: String -> [Token]
lexer ('/':'/':cs) = lexComment cs
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
lexer ('|':'|':cs) = TokenOr : lexer cs
lexer ('|':cs) = TokenPipe : lexer cs
lexer ('&':'&':cs) = TokenAnd : lexer cs
lexer ('&':cs) = TokenAmpersand : lexer cs
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
      "typeof" -> TokenTypeof : lexer rest
      "in" -> TokenIn : lexer rest
      "if" -> TokenIf : lexer rest
      "else" -> TokenElse : lexer rest
      "True" -> TokenBool True : lexer rest
      "False" -> TokenBool False : lexer rest
      _ -> TokenLiteral literal : lexer rest
      where
            (literal, rest) = span (\c -> not $ elem c specialCharacters) cs
            specialCharacters = [':', ' ', '\n', '(', ')', '=', '*', '/', '-', '+', '"', '|', '&']

lexComment :: String -> [Token]
lexComment cs = lexer rest
      where (_, rest) = span (\c -> c /= '\n') cs
