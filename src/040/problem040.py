#!/usr/bin/env python
i, s = 1, ''
while len(s) < 1000000:
    s += str(i)
    i += 1

r = 1
for p in range(7):
    r *= int(s[10**p - 1])

print(r)
