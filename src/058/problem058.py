#!/usr/bin/env python
def is_prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False
    return True


n, ratio = 7, 1

d = [1 + i**2 for i in range(2, n + 1, 2)]
d += [1 + i + i**2 for i in range(1, n, 2)]
d += [1 - i + i**2 for i in range(3, n + 1, 2)]

primes = list(filter(is_prime, d))
ratio = len(primes)/(len(d) + (n + 1)/2)

while ratio > 0.1:
    n += 2

    nd = [1 + (n - 1)**2, 1 + (n - 2) + (n - 2)**2, 1 - n + n**2]
    primes += [i for i in nd if is_prime(i)]
    d += nd

    ratio = len(primes)/(len(d) + (n + 1)/2)

print((n, ratio))
