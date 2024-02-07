# typoggers-lang

WIP

Grammar:

```rust
<Expr> ::= "let " <Name>+ (": " <CapitalName>)? " = " <Expr> " in" <BreakLine> <Expr> | <TypeDef>
<TypeDef> ::= "type " <CapitalName> " = " ("typeof " <Name> | <CapitalName>) " in" <BreakLine> <Expr> | <FuncDef>
<FuncDef> ::= "(" <Name> ": " <CapitalName> ")" (": " <CapitalName>)? " => " <Expr> | <FuncApp>
<FuncApp> ::= <Name> (" " <Expr>)+ | <LowTerm>
<LowTerm> ::= <LowTerm> (" + " | " - ") <HighTerm> | <HighTerm>
<HighTerm> ::= <HighTerm> (" * " | " / ") <Factor> | <Factor>
<Factor> ::= "\"" <Name> "\"" | [0-9]+ | "(" <Expr> ")" | <Name>
<Name> ::= [a-z]+ [0-9]* | <CapitalName>
<CapitalName> ::= [A-Z]+ [0-9]* <Name>*
<BreakLine> ::= (" "*) ("\n"*)
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
let bar: Baz = 3 in
foo + bar
```

Function definition

```rust
type Baz = Int in
let foo: Baz = 2 in // Comments
let bar: Baz = 3 in
let f: Function = (x: Baz): Baz => (y: Baz): Baz => x + y in
(f foo bar) + 1
```

Type inference

```rust
let foo = 2 in // Comments
let bar = 3 in
let f = (x: Baz) => (y: Baz) => x + y in
(f foo bar) + 1
```
