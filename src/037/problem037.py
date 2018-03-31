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

def rl_truncable(n):
    if n < 10:
        return False
    n = str(n)
    n = [int(n[i:]) for i in range(1, len(n))] + [int(n[:i]) for i in range(1, len(n))]
    return all([is_prime(i) for i in n])


primes = lazy_primes(int(1e6))
found, s = 0, 0
while found < 11:
    p = next(primes)
    if rl_truncable(p):
        found += 1
        s += p

print(s)
