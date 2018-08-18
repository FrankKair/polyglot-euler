Red [Title: "Problem 004"]

palindrome?: function [n] [n = to integer! reverse to string! n]

lp: 0

repeat i 990 [
  repeat j i [
    np: (1000 - i) * (1000 - j)
    if all [(np > lp) (palindrome? np)] [lp: np]
  ]
]

print lp
