primes :: [Integer]
primes = 2 : [x | x <- [3..], isprime x]
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x)
    where
        factorsToTry x = takeWhile (\p -> p*p <= x) primes

main :: IO ()
main = print $ primes !! 10000
