{

    module Parser (parse, Token (..)) where

}

%name parse
%tokentype { Token }
%error { parseError }

%token
      let             { TokenLet }
      in              { TokenIn }
      int             { TokenInt $$ }
      name            { TokenName $$ }
      '='             { TokenEq }
      '+'             { TokenPlus }
      '-'             { TokenMinus }
      '*'             { TokenTimes }
      '/'             { TokenDiv }
      '('             { TokenOB }
      ')'             { TokenCB }

%%

Exp      : let name '=' Exp in Exp  { Let $2 $4 $6 }
         | LowTerm                 { LowTerm $1 }

LowTerm  : LowTerm '+' HighTerm    { Plus $1 $3 }
         | LowTerm '-' HighTerm    { Minus $1 $3 }
         | HighTerm                { HighTerm $1 }

HighTerm : HighTerm '*' Factor     { Times $1 $3 }
         | HighTerm '/' Factor     { Div $1 $3 }
         | Factor                  { Factor $1 }

Factor   : int                     { Int $1 }
         | name                    { Name $1 }
         | '(' Exp ')'             { Brack $2 }

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Exp
      = Let String Exp Exp
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
      = Int Int
      | Name String
      | Brack Exp
      deriving Show

data Token
      = TokenLet
      | TokenIn
      | TokenInt Int
      | TokenName String
      | TokenEq
      | TokenPlus
      | TokenMinus
      | TokenTimes
      | TokenDiv
      | TokenOB
      | TokenCB
 deriving Show

}