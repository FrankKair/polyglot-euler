#!/usr/bin/env python

from functools import reduce

def factors(n):
    return set(reduce(list.__add__, ([i, n//i] for i in range(1, int(pow(n, 0.5) + 1)) if n % i == 0)))

i, tnum = 2, 1
while len(factors(tnum)) < 500:
    tnum = tnum + i
    i += 1

print(tnum)
