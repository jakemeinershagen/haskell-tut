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




left off: pg37