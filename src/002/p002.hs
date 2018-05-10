fib :: Num n => [n]
fib = 0 : scanl (+) 1 fib

sumOfEvenFibs :: Integral n => n -> n
sumOfEvenFibs bound =
    sum $ filter even $ takeWhile (< bound) fib

main :: IO ()
main = print $ sumOfEvenFibs 4000000
