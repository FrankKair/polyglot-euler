#!/usr/bin/python

import math


# n = steps
# k = grid size
def combination(n, k):
    return math.factorial(n) // (math.factorial(k) * (math.factorial(n - k)))


def count_routes(k):
    return combination(2 * k, k)


print count_routes(20)
