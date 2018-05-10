palindrome :: Integer -> Bool
palindrome num =
    let str = show num
    in str == reverse str

largestMultiplePalindrome :: Integer -> Integer -> Integer
largestMultiplePalindrome start end =
    maximum [x * y | x <- [start .. end], y <- [start .. end], palindrome (x * y)]

main :: IO ()
main = print $ largestMultiplePalindrome 900 999
