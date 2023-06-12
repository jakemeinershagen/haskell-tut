#!/bin/sh

ghc -no-keep-hi-files -no-keep-o-files --make Main.hs -o main
./main