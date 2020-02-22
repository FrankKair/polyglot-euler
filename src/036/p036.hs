import Numeric
import Data.Char

palindrome :: String -> Bool
palindrome s = reverse s == s

doubleBasePalindrome :: Integer -> Bool
doubleBasePalindrome n =
  palindrome base10 && palindrome base2 where
  base10 = show n
  base2 = showIntAtBase 2 intToDigit n ""

solve :: Integer
solve = sum $ filter (\x -> doubleBasePalindrome x) [1..1000000]

main :: IO ()
main = print $ solve
