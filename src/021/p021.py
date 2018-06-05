#!/usr/bin/env python3
import math


def factors(number):
    factors = [1]
    upper_bound = int(math.sqrt(number)) + 1
    for x in range(2, upper_bound):
        if number % x == 0:
            factors.append(int(number / x))
            factors.append(x)
    return factors


def amicable(number):
    factors_sum = sum(factors(number))
    if number == factors_sum:
        return False
    return number == sum(factors(factors_sum))


def solve():
    return sum(x for x in range(1, 10000) if amicable(x))


if __name__ == '__main__':
    result = solve()
    print(result)
