import Data.List (find, nub)
import Data.Maybe (fromJust)

triangleNumbers :: [Integer]
triangleNumbers = scanl (+) 1 [2..]

divisors :: Integer -> [Integer]
divisors n = (1 :) $ nub $ concat [[x, div n x] | x <- [2..limit], rem n x == 0]
     where limit = floor . sqrt $ fromIntegral n

firstTriangleWithAtLeastNDivisors :: Integer -> Integer
firstTriangleWithAtLeastNDivisors n =
    fromJust $ find (\triangle -> (fromIntegral $ length $ divisors triangle) >= n) triangleNumbers

main :: IO ()
main = print $ firstTriangleWithAtLeastNDivisors 500
