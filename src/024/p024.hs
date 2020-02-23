import Data.List

solve :: Integer
solve =
  read perm::Int where
  perm = (!! 999999) . sort $ permutations ['0'..'9']

main :: IO ()
main = print $ solve
