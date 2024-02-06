# typoggers-lang

WIP

Grammar:

```rust
<Expr> ::= "let " <Name>+ ": " <CapitalName> " = " <Expr> " in" <BreakLine> <Expr> | <TypeDef>
<TypeDef> ::= "type " <CapitalName> " = " <Type> " in" <BreakLine> <Expr> | <LowTerm>
<Type> ::= "typeof " <Name> | <CapitalName> | <HighTerm>
<LowTerm> ::= <LowTerm> (" + " | " - ") <HighTerm> | <HighTerm>
<HighTerm> ::= <HighTerm> (" * " | " / ") <Factor> | <Factor>
<Factor> ::= <String> | <Name>
<Name> ::= [a-z]+ [0-9]* | <CapitalName>
<CapitalName> ::= [A-Z]+ [0-9]* <Name>*
<String> ::= "\"" <Name> "\"" | <Int>
<Int> ::= [0-9]+
<BreakLine> ::= (" "*) ("\n"*)
```

Examples:

```rust
// Comments

let foo: Int = 2 in
let bar: Int = 3 in
print (foo + bar)
```

```rust
type Baz = Int in
let foo: Baz = 2 in
let bar: Baz = 3 in
print (foo + bar) // Comments
```
