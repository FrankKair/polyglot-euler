isqrt :: (Integral n, Integral m) => n -> m
isqrt = ceiling . sqrt . fromIntegral

smallestFactor :: Integral n => n -> Maybe n
smallestFactor number =
    let factors = filter (\x -> number `mod` x == 0) [2 .. isqrt number]
    in case factors of
        [] -> Nothing
        _  -> Just $ head factors

primeFactors :: Integral n => n -> [n]
primeFactors number =
    let factor = smallestFactor number
    in case factor of
        Nothing -> [number]
        Just fact  -> fact : primeFactors (number `div` fact)

largestPrimeFactor :: Integral n => n -> n
largestPrimeFactor number =
    maximum $ primeFactors number

main :: IO ()
main = print $ largestPrimeFactor 600851475143
