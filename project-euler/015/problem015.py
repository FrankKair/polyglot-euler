#!/usr/bin/python

import math


# n = steps
# k = grid size
def binomial_coefficient(n, k):
    return math.factorial(n) // (math.factorial(k) * (math.factorial(n - k)))


print binomial_coefficient(40, 20)
