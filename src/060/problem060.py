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

def property(primes):
    return all([is_prime(int(str(i[0]) + str(i[1]))) for i in itertools.permutations(primes, 2)])

primes = list(lazy_primes(10000))
found = None

for i in primes:
    pairs1 = [p for p in primes if property([i, p])]

    for j in pairs1:
        pairs2 = [p for p in primes if property([j, p])]

        pairs3 = set(pairs1).intersection(set(pairs2))
        pairs3.add(i)
        pairs3.add(j)

        for k in itertools.combinations(pairs3, 5):
            if property(k):
                found = k
                print(found, sum(found))
                break

        if found:
            break
    if found:
        break
