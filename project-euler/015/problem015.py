#!/usr/bin/python

import math


# n = steps
# k = grid size
def combination(n, k):
    return math.factorial(n) // (math.factorial(k) * (math.factorial(n - k)))


print combination(40, 20)
