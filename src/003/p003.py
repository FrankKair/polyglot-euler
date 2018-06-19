#!/usr/bin/env python
def prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False

    return True


def factors(n):
    f, s = 2, set()
    while n > 1:
        if n % f == 0:
            n = int(n / f)
            s.add(f)
        else:
            f += 1
    return s


print(max([n for n in factors(600851475143) if prime(n)]))
