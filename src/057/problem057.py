#!/usr/bin/env python
# Reference: https://en.wikipedia.org/wiki/Square_root_of_2#Continued_fraction_representation
p, q, s = 1, 1, 0
for i in range(1000):
    p, q = p + 2*q, p + q
    if len(str(p)) > len(str(q)):
        s += 1
print(s)
