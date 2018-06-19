#!/usr/bin/env python
def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def lcm(a, b):
    return a * b // gcd(a, b)


x = lcm(1, 2)
for i in range(3, 21):
    x = lcm(x, i)

print(x)
