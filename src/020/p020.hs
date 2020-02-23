import Data.Digits

sumDigitsOfNumber :: Integer -> Integer
sumDigitsOfNumber n = sum $ digits 10 n

factorial :: Integer -> Integer
factorial n = product [1..n]

solve :: Integer
solve = sumDigitsOfNumber $ factorial 100

main :: IO ()
main = print $ solve
