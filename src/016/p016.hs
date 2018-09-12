digitsOfNumber :: Integer -> [Integer]
digitsOfNumber n =
    map (\x -> read [x] :: Integer) (show n)

sumDigitsOfNumber :: Integer -> Integer
sumDigitsOfNumber n =
    sum $ digitsOfNumber n

main :: IO ()
main =
    print $ sumDigitsOfNumber (2^1000)
