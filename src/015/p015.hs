factorial :: Integer -> Integer
factorial n =
    product [1..n]

combination :: Integer -> Integer -> Integer
combination n k =
    (factorial n) `div` (factorial k)^2

main :: IO ()
main =
    print $ combination 40 20
