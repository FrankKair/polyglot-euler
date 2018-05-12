primes :: [Integer]
primes = 2 : [x | x <- [3..], isprime x]
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x)
    where
        factorsToTry x = takeWhile (\p -> p*p <= x) primes

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow bound =
    sum $ takeWhile (< bound) primes

main :: IO ()
main = print $ sumOfPrimesBelow 2000000
