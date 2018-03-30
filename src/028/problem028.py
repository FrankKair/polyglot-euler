#!/usr/bin/env python
n = 1001

d = [i**2 for i in range(1, n + 1, 2)]
d += [1 + i**2 for i in range(2, n + 1, 2)]
d += [1 + i + i**2 for i in range(1, n, 2)]
d += [1 - i + i**2 for i in range(3, n + 1, 2)]

print(sum(d))
