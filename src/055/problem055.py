#!/usr/bin/env python
palindrome = lambda n: str(n) == str(n)[::-1]

def lychrel(n):
    i = 1
    n = n + int(str(n)[::-1])
    while not palindrome(n) and i < 50:
        n = n + int(str(n)[::-1])
        i += 1

    return not palindrome(n)

print(sum([lychrel(n) for n in range(1, 10000)]))
