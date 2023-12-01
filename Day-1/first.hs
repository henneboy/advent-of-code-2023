
main = do
    input <- readFile "input.txt"
    putStrLn input


digits = [0,1,2,3,4,5,6,7,8,9]
findDigits str = [x | x <- str,  (read x) elem digits]

firstAndLastDigit str = head ds + head (reverse ds)
    where
    ds = findDigits str

exLine = "1six7396484"
