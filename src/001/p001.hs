divisibleByAny :: Integral n => [n] -> n -> Bool
divisibleByAny divisors dividend =
    any (\divisor -> dividend `mod` divisor == 0) divisors

sumOfMultiples :: Integral n => [n] -> n -> n
sumOfMultiples divisors bound =
     sum $ filter (divisibleByAny divisors) [1..bound-1]

main :: IO ()
main = print $ sumOfMultiples [3, 5] 1000
