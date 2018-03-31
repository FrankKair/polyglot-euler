#!/usr/bin/env python

palindrome = lambda n: n == n[::-1]
db_palindrome = lambda n: palindrome(str(n)) and palindrome(bin(n)[2:])

print(sum([i for i in range(int(1e6)) if db_palindrome(i)]))
