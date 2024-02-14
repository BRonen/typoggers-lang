# typoggers-lang

Variable Assignment

```haskell
// Comments
let foo: Int = 2 in
let bar: Int = 3 in
foo + (let baz: Int = 2 in baz + bar)
```

Type Alias

```haskell
type Baz = Int in
let foo: Baz = 2 in // Comments
let bar: typeof foo = 3 in
foo + bar
```

Function definition

```haskell
type Baz = Int in
let foo: Baz = 2 in // Comments
let bar: Baz = 3 in
let f: Int -> Int -> Int = (x: Baz): Baz => (y: Baz): Baz => x + y in
(f foo bar) + 1
```

Type inference

```haskell
let foo = 2 in // Comments
let bar = 3 in
let f = (x: Baz) => (y: Baz) => x + y in
(f foo bar) + 1
```

High order functions

```haskell
let apply = (x: Int -> Int) => x 2 in
let double = (y: Int) => y * 2 in
apply double
```

Unions and intersections

```haskell
type Any = (String | Int | Bool) & (String | Int | Bool) in
let i: Any = "hello world" in
let j: Any = 1234 in
let k: Any = True in
0
```

Logical operators

```haskell
let t: Bool = false || true in
let f: Bool = false && true in
t && f || t
```

Conditionals

```haskell
let a = if True then 0 else 3 in
let b = if False then 0 else 5 in
a + b
```
