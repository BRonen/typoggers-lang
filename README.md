# typoggers-lang

WIP

Grammar:

```rust
<Expr> ::= "let " <Name>+ (": " <TypeNotation>)? " = " <Expr> " in" <BreakLine> <Expr> | <TypeDef>
<TypeDef> ::= "type " <CapitalName> " = " <TypeNotation> " in" <BreakLine> <Expr> | <FuncDef>
<FuncDef> ::= "(" <Name> ": " <TypeNotation> ")" (": " <TypeNotation>)? " => " <Expr> | <FuncApp>
<FuncApp> ::= <Name> (" " <Expr>)+ | <LowTerm>
<LowTerm> ::= <LowTerm> (" + " | " - ") <HighTerm> | <HighTerm>
<HighTerm> ::= <HighTerm> (" * " | " / ") <Factor> | <Factor>
<Factor> ::= "\"" <Name> "\"" | [0-9]+ | "(" <Expr> ")" | <Name>
<TypeNotation> ::= "typeof " <Name> | <CapitalName> | <TypeNotation> " -> " <CapitalName>
<Name> ::= [a-z]+ [0-9]* | <CapitalName>
<CapitalName> ::= [A-Z]+ [0-9]* <Name>*
<BreakLine> ::= (" "*) ("\n"*))
```

You can check the grammar [here](https://bnfplayground.pauliankline.com/)

## Examples

Variable Assignment

```rust
// Comments
let foo: Int = 2 in
let bar: Int = 3 in
foo + (let baz: Int = 2 in baz + bar)
```

Type Alias (Not implemented yet)

```rust
type Baz = Int in
let foo: Baz = 2 in // Comments
let bar: typeof foo = 3 in
foo + bar
```

Function definition

```rust
type Baz = Int in
let foo: Baz = 2 in // Comments
let bar: Baz = 3 in
let f: Int -> Int -> Int = (x: Baz): Baz => (y: Baz): Baz => x + y in
(f foo bar) + 1
```

Type inference

```rust
let foo = 2 in // Comments
let bar = 3 in
let f = (x: Baz) => (y: Baz) => x + y in
(f foo bar) + 1
```

High order functions

```rust
let apply = (x: Int -> Int) => x 2 in
let double = (y: Int) => y * 2 in
apply double
```
