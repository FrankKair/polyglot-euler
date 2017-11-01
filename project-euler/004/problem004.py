#!/usr/bin/env python
def is_palindrome(x):
    return str(x)[::-1] == str(x)


largest_sum = 0

for x in range(0, 1000):
    for y in range(x, 1000):
        product = x * y
        if is_palindrome(product) and product > largest_sum:
            largest_sum = product

print largest_sum
