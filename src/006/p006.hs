sumOfSquares :: Integral n => [n] -> n
sumOfSquares ns = sum $ map (^2) ns

squareOfSum :: Integral n => [n] -> n
squareOfSum ns = (sum ns)^2

difference :: Integral n => [n] -> n
difference ns = squareOfSum ns - sumOfSquares ns

main :: IO ()
main = print $ difference [1..100]
