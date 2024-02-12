{
module Parser (
      parse,
      Token (..),
      SExpr (..),
      ) where

import Lexer (Token (..))
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
      if              { TokenIf }
      then            { TokenThen }
      else            { TokenElse }
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

Expr         : let literal ':' LowTypeNote '=' Expr in Expr                  { SLet $2 $4 $6 $8 }
             | let literal '=' Expr in Expr                                  { SLetInfer $2 $4 $6 }
             | TypeDef                                                       { $1 }

TypeDef      : type literal '=' LowTypeNote in Expr                          { STypeAlias $2 $4 $6 }
             | FuncDef                                                       { $1 }

FuncDef      : '(' literal ':' LowTypeNote ')' ':' LowTypeNote fatarrow Expr { SDef $2 $4 $7 $9 }
             | '(' literal ':' LowTypeNote ')' fatarrow Expr                 { SDefInfer $2 $4 $7 }
             | Conditional                                                   { $1 }

Conditional  : if Expr then Expr else Expr                                   { SOr (SAnd $2 $4) $6 }
             | FuncApp                                                       { $1 }

FuncApp      : literal Expr                                                  { SApp (SName $1) $2 }
             | '(' Expr ')' Expr                                             { SApp $2 $4 }
             | LowTerm                                                       { $1 }

LowTerm      : LowTerm '+' HighTerm                                          { SPlus $1 $3 }
             | LowTerm '-' HighTerm                                          { SMinus $1 $3 }
             | HighTerm                                                      { $1 }

HighTerm     : HighTerm '*' LowLogicOp                                       { STimes $1 $3 }
             | HighTerm '/' LowLogicOp                                       { SDiv $1 $3 }
             | LowLogicOp                                                    { $1 }

LowLogicOp   : LowLogicOp or HighLogicOp                                     { SOr $1 $3 }
             | HighLogicOp                                                   { $1 }

HighLogicOp  : HighLogicOp and Factor                                        { SAnd $1 $3 }
             | Factor                                                        { $1 }

Factor       : '"' string '"'                                                { SString $2 }
             | literal                                                       { SName $1 }
             | int                                                           { SInt $1 }
             | bool                                                          { SBool $1 }
             | '(' Expr ')'                                                  { SBrack $2 }

LowTypeNote  : HighTypeNote arrow LowTypeNote                                { STypeFunc $1 $3 }
             | HighTypeNote '|' LowTypeNote                                  { STypeUnion $1 $3 }
             | HighTypeNote '&' LowTypeNote                                  { STypeIntersection $1 $3 }
             | HighTypeNote                                                  { $1 }

HighTypeNote : literal                                                       { SType $1 }
             | typeof Expr                                                   { STypeof $2 }
             | '(' LowTypeNote ')'                                           { $2 }

{
parseError :: [Token] -> a
parseError tokens = error $ "Parse error: " ++ show tokens

data SExpr
      = SLet String SExpr SExpr SExpr
      | SLetInfer String SExpr SExpr
      | STypeAlias String SExpr SExpr
      | SDef String SExpr SExpr SExpr
      | SDefInfer String SExpr SExpr
      | SApp SExpr SExpr
      | SPlus SExpr SExpr
      | SMinus SExpr SExpr
      | STimes SExpr SExpr
      | SDiv SExpr SExpr
      | SAnd SExpr SExpr
      | SOr SExpr SExpr
      | SString String
      | SInt Int
      | SName String
      | SBool Bool
      | SBrack SExpr
      | SType String
      | STypeof SExpr
      | STypeUnion SExpr SExpr
      | STypeIntersection SExpr SExpr
      | STypeFunc SExpr SExpr
      deriving Show
}
