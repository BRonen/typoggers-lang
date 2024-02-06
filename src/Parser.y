{
module Parser (
      parse,
      Token (..),
      Expr (..),
      TypeDef (..),
      LowTerm (..),
      HighTerm (..),
      Factor (..)
) where
}

%name parse
%tokentype { Token }
%error { parseError }

%token
      let             { TokenLet }
      type            { TokenType }
      in              { TokenIn }
      int             { TokenInt $$ }
      literal         { TokenLiteral $$ }
      bool            { TokenBool $$ }
      '"'             { TokenQuote }
      '='             { TokenEq }
      '+'             { TokenPlus }
      '-'             { TokenMinus }
      '*'             { TokenTimes }
      '/'             { TokenDiv }
      '('             { TokenOB }
      ')'             { TokenCB }
      ':'             { TokenColon }

%%

Expr     : let literal ':' literal '=' Expr in Expr { Let $2 $4 $6 $8 }
         | TypeDef                                  { TypeDef $1 }

TypeDef  : type literal '=' literal in Expr         { Type $2 $4 $6 }
         | LowTerm                                  { LowTerm $1 }

LowTerm  : LowTerm '+' HighTerm                     { Plus $1 $3 }
         | LowTerm '-' HighTerm                     { Minus $1 $3 }
         | HighTerm                                 { HighTerm $1 }

HighTerm : HighTerm '*' Factor                      { Times $1 $3 }
         | HighTerm '/' Factor                      { Div $1 $3 }
         | Factor                                   { Factor $1 }

Factor   : '"' literal '"'                          { String $2 }
         | literal                                  { Name $1 }
         | int                                      { Int $1 }
         | bool                                     { Bool $1 }
         | '(' Expr ')'                             { Brack $2 }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr
      = Let String String Expr Expr
      | TypeDef TypeDef
      deriving Show

data TypeDef
      = Type String String Expr
      | LowTerm LowTerm
      deriving Show

data LowTerm
      = Plus LowTerm HighTerm
      | Minus LowTerm HighTerm
      | HighTerm HighTerm
      deriving Show

data HighTerm
      = Times HighTerm Factor
      | Div HighTerm Factor
      | Factor Factor
      deriving Show

data Factor
      = String String
      | Int Int
      | Name String
      | Bool Bool
      | Brack Expr
      deriving Show

data Token
      = TokenLet
      | TokenType
      | TokenIn
      | TokenInt Int
      | TokenLiteral String
      | TokenBool Bool
      | TokenQuote
      | TokenEq
      | TokenPlus
      | TokenMinus
      | TokenTimes
      | TokenDiv
      | TokenOB
      | TokenCB
      | TokenColon
      deriving Show
}