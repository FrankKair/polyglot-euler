#!/usr/bin/python

import math


def combination(n, k):
    return math.factorial(n) // (math.factorial(k) * (math.factorial(n - k)))


result = 0
for n in range(1, 101):
    for k in range(1, 101):
        if n > k:
            if combination(n, k) >= 1000000:
                result += 1

print result

