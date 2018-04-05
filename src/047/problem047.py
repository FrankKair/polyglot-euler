#!/usr/bin/env python
import itertools
from functools import reduce

def factors(n):
    f = set(reduce(list.__add__, ([i, n//i] for i in range(1, int(pow(n, 0.5) + 1)) if n % i == 0)))
    f.remove(n)
    return f

def is_prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False    

    return True

i, n = 1, 4

while True:
    found = []
    for j in range(i, i+n):
        found.append(sum([1 for f in factors(j) if is_prime(f)]) == n)
    if all(found):
        print(list(range(i, i+n)))
        break
    i += 1
