#!/usr/bin/env python
import itertools
from functools import reduce

def factors(n):
    f = set(reduce(list.__add__, ([i, n//i] for i in range(1, int(pow(n, 0.5) + 1)) if n % i == 0)))
    f.remove(n)
    return f

sp = []
for p in range(2, 1001, 2):
    s = 0
    for a in factors(p):
        for b in range(a, int(p/2)):
            s += a + b + (a**2 + b**2)**0.5 == p
    sp.append((s, p))

print(max(sp, key=lambda x: x[0]))
