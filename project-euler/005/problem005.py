#!/usr/bin/env python
def greatest_common_divisor(a, b):
    while b:
        a, b = b, a % b
    return a


def least_common_multiple(a, b):
    return a * b // greatest_common_divisor(a, b)


def lcm_of_sequence(seq):
    return reduce(least_common_multiple, seq)


# Smallest number evenly divisible by all numbers from 1 to 20.
print lcm_of_sequence(range(1, 20))
