#!/usr/bin/env python
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

primes = list(lazy_primes(1000000))
primes_cusum = [0]*(len(primes) + 1)
for i in range(0, len(primes)):
    primes_cusum[i + 1] = primes_cusum[i] + primes[i]
primes = set(primes)

n_primes = len(primes_cusum)

prime, biggest = 0, 0
for i in range(n_primes):
    if primes_cusum[i] > 1000000:
        break
    for j in range(i + 1, n_primes):
        np = j - i
        pc = primes_cusum[j] - primes_cusum[i]
        if pc > 1000000:
            break
        if pc in primes and np > biggest:
            biggest = np
            prime = pc

print((prime, biggest))
