digitsOfNumber :: Integer -> [Integer]
digitsOfNumber n =
    map (\x -> read [x] :: Integer) (show n)

sumDigitsOfNumber :: Integer -> Integer
sumDigitsOfNumber n =
    sum $ digitsOfNumber n

factorial :: Integer -> Integer
factorial n =
    product [1..n]

main :: IO ()
main =
    print $ sumDigitsOfNumber $ factorial 100
