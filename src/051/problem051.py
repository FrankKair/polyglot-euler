#!/usr/bin/env python
import itertools

def is_prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False
    return True

def lazy_primes(limit):
    yield 2
    sub_limit = int(limit**0.5)
    flags = [True, True] + [False] * (limit - 2)
    for i in range(3, limit, 2):
        if flags[i]:
            continue
        yield i
        if i <= sub_limit:
            for j in range(i*i, limit, i<<1):
                flags[j] = True

def has_equal_digits(n):
    n = str(n)
    return len(list(n)) > len(set(n))

def replace_equal_digits(n):
    n = str(n)
    reps = []
    for i in set(n):
        if n.count(i) > 1:
            reps.append(n.replace(i, '*'))
    return reps

templates = []
for p in filter(has_equal_digits, lazy_primes(1000000)):
    templates += replace_equal_digits(p)

for t in templates:
    np = sum([is_prime(int(t.replace('*', i))) for i in '0123456789' if t.replace('*', i)[0] != '0'])
    if np == 8:
        for i in '0123456789':
            n = int(t.replace('*', i))
            if is_prime(n):
                print(n)
                break
        break
