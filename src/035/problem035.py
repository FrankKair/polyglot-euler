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

def rotations(n):
    r = [str(n)]
    for i in range(len(r[0]) - 1):
        r.append(r[i][1:] + r[i][0])
    return map(int, r[1:])

def circular(n):
    if n < 10:
        return True
    return all([is_prime(r) for r in rotations(n)])

print(len([i for i in lazy_primes(int(1e6)) if circular(i)]))
