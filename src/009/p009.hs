import Data.List (find)

pythagoreanTriplet :: Integral n => (n, n, n) -> Bool
pythagoreanTriplet (a, b, c) =
    a^2 + b^2 == c^2

multiplyFirstTriplet :: Integral n => [(n, n, n)] -> n
multiplyFirstTriplet candidates =
    let Just (a, b, c) = find pythagoreanTriplet candidates
    in a * b * c

tripletsWithSum1000 :: Integral n => [(n, n, n)]
tripletsWithSum1000 =
    [(a, b, 1000 - a - b) | a <- [1..500], b <- [1..500]]

main :: IO ()
main = print $ multiplyFirstTriplet tripletsWithSum1000
