module Main where

import System.IO

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
my_length n = 1 + my_length (tail n)

my_filter filter_func [] = []
my_filter filter_func list =
    if filter_func (head list)
        then head list : my_filter filter_func (tail list)
        else my_filter filter_func (tail list)

-- p is filtering function
tut_filter p [] = []
--in retrospect it is probably not a good idea that I used
--head and tail as variables here since they are already
--defined as functions
tut_filter p (head:tail) =
    if p head
        then head : tut_filter p tail
        else tut_filter p tail

fib 1 = 1
fib 0 = 0
fib n = fib (n - 2) + fib (n - 1)

mult a 1 = a
mult a b = a + mult a (b - 1)

my_map func [] = []
my_map func (hd:tl) = func hd : my_map func tl

-- main = putStrLn(factorial 14)
-- main = putStrLn("hello world")
-- do runs a sequence of commands
main = do
    --this prevents GHC from reading in blocks since a name
    -- is not big enough to fill the buffer
    hSetBuffering stdin LineBuffering
    putStrLn "Please enter your name: "
    name <- getLine
    putStrLn ("Hello, " ++ name ++ ", how are you?")