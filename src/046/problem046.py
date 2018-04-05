#!/usr/bin/env python
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
        if j*j > limit:
            continue
        for i in range(j, limit, j):
            sieve[i] = True

n = 10000
odd_composites = set()

for p in lazy_primes(n):
    for i in range(1, int(n**0.5)):
        odd_composites.add(p + 2*i**2)

for i in range(9, n, 2):
    if not is_prime(i) and i not in odd_composites:
        print(i)
        break
