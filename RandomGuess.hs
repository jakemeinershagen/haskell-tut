module RandomGuess where

import System.IO
import System.Random

-- randomguess = putStrLn "hello random"
randomguess = do
    hSetBuffering stdin LineBuffering
    -- according to docs randomRIO that tut uses is deprecated
    -- this random func is inclusive
    -- I can't get this to work so I'm moving on
    num <- uniformRM (1, 100)
    putStrLn "Guess between 1 and 100"
    doGuessing num

doGuessing num = do
    putStrLn "Enter guess: "
    guess <- getLine
    let guessNum = read guess
    if guessNum < num
        then doTooLow num
        else if guessNum > num
            then doTooHigh num
            else doWin

doTooLow num = do
    putStrLn "Too Low"
    doGuessing num

doTooHigh num = do
    putStrLn "Too High"
    doGuessing num

doWin = do
    putStrLn "You Win"