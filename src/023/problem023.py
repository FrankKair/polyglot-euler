#!/usr/bin/env python
import itertools
from functools import reduce

def factors(n, remove_own=False):
    f = set(reduce(list.__add__, ([i, n//i] for i in range(1, int(pow(n, 0.5) + 1)) if n % i == 0)))
    if remove_own:
        f.remove(n)
    return f

abundants = [n for n in range(1, 28123) if sum(factors(n, True)) > n]
remove = map(sum, itertools.combinations_with_replacement(abundants, 2))

print(sum(set(range(1, 28123)) - set(remove)))
