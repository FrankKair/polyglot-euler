#!/usr/bin/env python
from math import sqrt

# Fast Fibonacci Number
# http://mathworld.wolfram.com/FibonacciNumber.html
fib = lambda n: int(((1 + sqrt(5))**n - (1 - sqrt(5))**n) / (2**n * sqrt(5)))

n = 2
s = 0
f = fib(n)
while f < 4e6:
    if f % 2 == 0:
        s += f
    n += 1
    f = fib(n)

print(s)
