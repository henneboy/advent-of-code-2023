
import Data.Char

main = do
    input <- readFile "input.txt"
    l <- lines input
    sequence_ l


firstAndLastDigit line = do
    d <- filter isDigit line
    return d
