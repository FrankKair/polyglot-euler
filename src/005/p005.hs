smallestDividedByAll :: Integral n => n -> n
smallestDividedByAll divisorBound =
    foldl1 (\acc n -> lcm acc n) [2 .. divisorBound]

main :: IO ()
main = print $ smallestDividedByAll 20
