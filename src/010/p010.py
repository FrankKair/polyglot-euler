#!/usr/bin/env python
import math


def sum_primes(n):
    m = int(n + 1)
    numbers = [True for i in range(m)]
    for i in range(2, int(math.sqrt(n))):
        if numbers[i]:
            for j in range(i * i, m, i):
                numbers[j] = False
    sp = 0
    for i in range(2, m):
        if numbers[i]:
            sp += i
    return sp


print(sum_primes(2e6))
