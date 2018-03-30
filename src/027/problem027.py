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
    sieve = [False]*limit
    for j in range(2, limit):
        if sieve[j]:
            continue
        yield j
        yield -j
        if j*j > limit:
            continue
        for i in range(j, limit, j):
            sieve[i] = True

def count_generated(c):
    n = 0
    f = lambda n: n**2 + c[0]*n + c[1]
    while is_prime(f(n)):
        n += 1
    return n


coeffs = list(itertools.product(lazy_primes(1000), repeat=2))
count_primes = [count_generated(c) for c in coeffs]
c = coeffs[count_primes.index(max(count_primes))]

print(c[0]*c[1])
