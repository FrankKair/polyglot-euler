#!/usr/bin/env python3
from math import sqrt
from itertools import permutations


def prime(number):
    if number == 1:
        return False
    upper_bound = int(sqrt(number)) + 1
    for x in range(2, upper_bound):
        if x == number:
            next
        if number % x == 0:
            return False
    return True


def largest_prime_pandigital():
    largest_prime_pandigital = 1
    permutations_list = list(permutations('1234567'))

    for p in permutations_list:
        number = int(''.join(map(str, p)))
        if prime(number):
            largest_prime_pandigital = number

    return largest_prime_pandigital


def solve():
    return largest_prime_pandigital()


if __name__ == '__main__':
    result = solve()
    print(result)
