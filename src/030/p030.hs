import Data.Digits

digitsFifthPower :: Integer -> Integer
digitsFifthPower n =
  sum $ map (\x -> x ^ 5) $ digits 10 n

solve :: Integer
solve =
  sum $ filter (\x -> digitsFifthPower x == x) $ takeWhile (< 200000) [1..]

main :: IO ()
main =
  print $ solve
