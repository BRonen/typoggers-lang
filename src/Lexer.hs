module Lexer
    ( lexer
    ) where

import Data.Char (isDigit, isAlpha, isSpace)
import Parser (Token (..))

lexer :: String -> [Token]
lexer ('/':'/':cs) = lexComment cs
lexer ('T':'r':'u':'e':cs) = TokenBool True : lexer cs
lexer ('F':'a':'l':'s':'e':cs) = TokenBool False : lexer cs
lexer ('=':'>':cs) = TokenFatArrow : lexer cs
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer ('"':cs) = TokenQuote : lexer cs
lexer ('=':cs) = TokenEq : lexer cs
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('-':cs) = TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs
lexer (c:cs)
      | isSpace c = lexer cs
      | isAlpha c = lexLiteral (c:cs)
      | isDigit c = lexNum (c:cs)
lexer _ = []

lexNum :: String -> [Token]
lexNum cs = TokenInt (read num) : lexer rest
      where (num,rest) = span isDigit cs

lexLiteral :: String -> [Token]
lexLiteral cs =
   case span isAlpha cs of
      ("let",rest) -> TokenLet : lexer rest
      ("type",rest)  -> TokenType : lexer rest
      ("in",rest)  -> TokenIn : lexer rest
      (literal,rest)   -> TokenLiteral literal : lexer rest

lexComment :: String -> [Token]
lexComment cs = lexer rest
      where (_,rest) = span (\c -> c /= '\n') cs
