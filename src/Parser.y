{
module Parser (
      parse,
      Token (..),
      Expr (..),
      TypeDef (..),
      FuncDef (..),
      FuncApp (..),
      LowTerm (..),
      HighTerm (..),
      Factor (..),
      TypeNote (..)
) where
}

%name parse
%tokentype  { Token }
%error      { parseError }

%token
      let             { TokenLet }
      type            { TokenType }
      typeof          { TokenTypeof }
      in              { TokenIn }
      int             { TokenInt $$ }
      bool            { TokenBool $$ }
      string          { TokenString $$ }
      literal         { TokenLiteral $$ }
      fatarrow        { TokenFatArrow }
      arrow           { TokenArrow }
      and             { TokenAnd }
      or              { TokenOr }
      '"'             { TokenQuote }
      '='             { TokenEq }
      '+'             { TokenPlus }
      '-'             { TokenMinus }
      '*'             { TokenTimes }
      '/'             { TokenDiv }
      '('             { TokenOB }
      ')'             { TokenCB }
      ':'             { TokenColon }
      '|'             { TokenPipe }
      '&'             { TokenAmpersand }

%%

Expr         : let literal ':' LowTypeNote '=' Expr in Expr            { Let $2 $4 $6 $8 }
             | let literal '=' Expr in Expr                            { LetInfer $2 $4 $6 }
             | TypeDef                                                 { TypeDef $1 }

TypeDef      : type literal '=' LowTypeNote in Expr                    { TypeAlias $2 $4 $6 }
             | FuncDef                                                 { FuncDef $1 }

FuncDef      : '(' literal ':' LowTypeNote ')' ':' LowTypeNote fatarrow Expr { Def $2 $4 $7 $9 }
             | '(' literal ':' LowTypeNote ')' fatarrow Expr                 { DefInfer $2 $4 $7 }
             | FuncApp                                                       { FuncApp $1 }

FuncApp      : literal Expr                                            { App $1 $2 }
             | LowTerm                                                 { LowTerm $1 }

LowTerm      : LowTerm '+' HighTerm                                    { Plus $1 $3 }
             | LowTerm '-' HighTerm                                    { Minus $1 $3 }
             | HighTerm                                                { HighTerm $1 }

HighTerm     : HighTerm '*' Factor                                     { Times $1 $3 }
             | HighTerm '/' Factor                                     { Div $1 $3 }
             | LogicalTerm                                             { $1 }

LogicalTerm  : LogicalTerm and Factor                                  { And $1 $3 }
             | LogicalTerm or Factor                                   { Or $1 $3 }
             | Factor                                                  { Factor $1 }

Factor       : '"' string '"'                                          { String $2 }
             | literal                                                 { Name $1 }
             | int                                                     { Int $1 }
             | bool                                                    { Bool $1 }
             | '(' Expr ')'                                            { Brack $2 }

LowTypeNote  : HighTypeNote arrow LowTypeNote                          { TypeFunc $1 $3 }
             | HighTypeNote '|' LowTypeNote                            { TypeUnion $1 $3 }
             | HighTypeNote '&' LowTypeNote                            { TypeIntersection $1 $3 }
             | HighTypeNote                                            { $1 }

HighTypeNote : literal                                                 { Type $1 }
             | typeof Expr                                             { Typeof $2 }
             | '(' LowTypeNote ')'                                     { $2 }

{
parseError :: [Token] -> a
parseError tokens = error $ "Parse error: " ++ show tokens

data Expr
      = Let String TypeNote Expr Expr
      | LetInfer String Expr Expr
      | TypeDef TypeDef
      deriving Show

data TypeDef
      = TypeAlias String TypeNote Expr
      | FuncDef FuncDef
      deriving Show

data FuncDef
      = Def String TypeNote TypeNote Expr
      | DefInfer String TypeNote Expr
      | FuncApp FuncApp
      deriving Show

data FuncApp
      = App String Expr
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
      | And HighTerm Factor
      | Or HighTerm Factor
      | Factor Factor
      deriving Show

data Factor
      = String String
      | Int Int
      | Name String
      | Bool Bool
      | Brack Expr
      deriving Show

data TypeNote
      = Type String
      | Typeof Expr
      | TypeUnion TypeNote TypeNote
      | TypeIntersection TypeNote TypeNote
      | TypeFunc TypeNote TypeNote
      deriving Show

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
      deriving Show
}