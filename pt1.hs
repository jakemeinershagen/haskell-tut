
--haskell comment

inRange min max x = x <= max && x >= min

main = print (inRange 0 5 2,
inRange 0 5 -1
)
