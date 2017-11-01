#!/usr/bin/env python
import math


def square_root_as_int(x):
    return int(math.sqrt(x))


def is_prime(number):
    if number == 1:
        return False
    for x in range(2, square_root_as_int(number) + 1):
        if x == number:
            next
        if number % x == 0:
            return False
    return True


def factors_of_(number):
    factors = []
    for x in range(2, square_root_as_int(number) + 1):
        if number % x == 0:
            factors.append(x)
            factors.append(number / x)
    return factors


# Main
factors = factors_of_(600851475143)

primes = []
for factor in factors:
    if is_prime(factor):
        primes.append(factor)
print max(primes)

# Functional
print max(filter(lambda x: is_prime(x), factors_of_(600851475143)))
