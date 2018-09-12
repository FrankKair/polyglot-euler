next :: Int -> Int
next n =
    if n `mod` 2 == 0 then
        n `div` 2
    else
        3 * n + 1

collatzSequence :: Int -> [Int]
collatzSequence n =
    takeWhile (\m -> m /= 1) $ iterate next n

collatz :: Int -> Int
collatz n =
    1 + (length $ collatzSequence n)

largestCollatzUntil :: Int -> Int
largestCollatzUntil bound =
    snd $ maximum $ map (\n -> (collatz n, n)) [1..bound]

main :: IO ()
main =
    print $ largestCollatzUntil 1000000
