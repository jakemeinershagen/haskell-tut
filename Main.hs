module Main where

--line comment
{-
block comment {-nested block comment. idk why you would use this but it works-}
-}

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

{- 
recursion (defining function piece-wise)
'factorial (n - 1)' in the second line is the recursive call
-}
factorial 1 = 1
factorial n = n * factorial (n - 1)

--length of list using recursion
-- this is prefixed as my_ so the comiler doesn't choke
my_length [] = 0
my_length n = 1 + list_length (tail n)

-- main = putStrLn(factorial 14)
main = putStrLn("hello world")