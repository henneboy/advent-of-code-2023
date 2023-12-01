import System.Win32 (xBUTTON1)
import Data.Char

main = do
    input <- readFile "input.txt"
    putStrLn [firstAndLastDigit line | line <- split input '\n']

splitStringOnChar :: [a] -> a -> [[a]]
splitStringOnChar [] char = [[]]
splitStringOnChar (x:xs) char = if x == char then [x] : (l:ls) else (x : l) : ls
    where (l:ls) = splitStringOnChar xs char

findDigits str = [digitToInt x | x <- str, isDigit x]

firstAndLastDigit str = head ds + last ds
    where
    ds = findDigits str

exLine = "1six7396484"
