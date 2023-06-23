Need to have installed (package names in apt):  
ghc  
cabal-install  

Some commands to run/compile a file (ex name is Test.hs):  
`runghc Test.hs`  
- runs the file without compiling it to a file. at least that's how I understand it  
`ghci Test.hs`  
- this will run in interactive mode with the file loaded  
- this is the same as running ghci and then doing the command `:l Test.hs`
- if you change the files that you have loaded, you don't need to close and open ghci. you can just do `:reload`  
`ghc -Wall -no-keep-hi-files -no-keep-o-files --make Test.hs -o test`  
- [ghc docs](https://downloads.haskell.org/ghc/latest/docs/users_guide/using.html)  
- your project needs to have a main module for this to work  
- the no-keeps just prevent the compiler from leaving around the intermediate files  
- Wall shows all warnings

`signum (-3)`
- needs to be called like this for negatives otherwise stupid haskell thinks you are trying to subtract

[Haskell Prelude Docs](https://hackage.haskell.org/package/base-4.18.0.0/docs/Prelude.html)

let allows you to define locally scoped variables.

pg38 discusses using infix functions (in haskell these are the symbols ex: + - ++) as prefix or prefix funcs as infix. Kinda weird and probably ill advised stylewise

when doing the factorial example I was trying numbers up 100+ 1000+ and was seeing a lot of trailing zeros. i thought this might be an artifact of precision or something but I guess not. turns out it's just kind of how factorials work. https://math.stackexchange.com/questions/2392599/why-do-factorials-of-big-numbers-have-so-many-trailing-zeros


this was the tutorial version of list length
my_length [] = 0
my_length (x:xs) = 1 + my_length xs
the x:xs is pattern matching you can think of the : as the prepend operator then the following are identical
[1,2,3]
1:[1,2]
1:2:[3]
1:2:3:[]
so with the list I used [1,2,3,4,5] the tuts example should read it like 1:[2,3,4,5] on the first function call and then pass [2,3,4,5] to the recursive call which will read it as 2:[3,4,5] and so on to the base case. I think...



https://wiki.haskell.org/Programming_guidelines
left off pg: 41