module Main where

x = 5
y = (6, "Hello")
z = x * fst y

-- function square takes param x and squares it
square x = x * x

-- if
signum x =
    if x < 0
        then -1
        else if x > 0
            then 1
            else 0

-- case
foo x = case x of
    0 -> 1
    1 -> 5
    2 -> 2
    _ -> -1

-- using curly braces and semicolons so haskell whitespace format doesn't matter
baz x = case x of { 0 -> 1; 1 -> 5; 2->2; 
_->1}

-- same function defined piece-wise
bar 0 = 1
bar 1 = 5
bar 2 = 2
bar _ = -1

main = putStrLn("Hi World")