#!/usr/bin/env python
from functools import reduce

def factors(n, remove_own=False):
    f = set(reduce(list.__add__, ([i, n//i] for i in range(1, int(pow(n, 0.5) + 1)) if n % i == 0)))
    if remove_own:
        f.remove(n)
    return f

def amicable(n):
    dn = sum(factors(n, True))
    return dn > 0 and sum(factors(dn, True)) == n and dn != n

print(sum([n for n in range(1, 10000) if amicable(n)]))
