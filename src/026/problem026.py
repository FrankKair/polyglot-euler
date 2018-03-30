#!/usr/bin/env python
import itertools
from functools import reduce

def two_five(n):
    # Check if number is of the form 2^i*5^j with i,j>=0
    if n % 10 == 0 or n % 8 == 0:
        return False

    while n % 2 == 0 or n % 5 == 0:
        if n % 2 == 0:
            n = n/2
        elif n % 5 == 0:
            n = n/5
    return n == 1

def cycle_size(n):
    # Based on https://oeis.org/A051626 algorithm
    if two_five(n):
        return 0
    else:
        lpow = 1
        while True:
            for mpow in range(lpow-1, -1, -1):
                if (10**lpow - 10**mpow) % n == 0:
                    return lpow - mpow
            lpow += 1

d = [cycle_size(n) for n in range(1, 1000)]
print(d.index(max(d)) + 1)
