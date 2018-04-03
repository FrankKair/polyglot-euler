#!/usr/bin/env python
import itertools

def pentagonal(P):
    n1 = (1 + (1+24*P)**0.5)/6
    n2 = (1 - (1+24*P)**0.5)/6
    return max(n1, n2) == int(max(n1, n2))

n = 1
found = False
while not found:
    p1 = n * (3 * n - 1) / 2
    n += 1

    for i in range(n - 1, 0, -1):
        p2 = i * (3 * i - 1) / 2
        if pentagonal(p1 + p2) and pentagonal(p1 - p2):
            found = True
            break

print(int(p1 - p2))
