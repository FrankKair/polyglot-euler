#!/usr/bin/env python
import itertools

pandigitals = itertools.permutations('0123456789')

f1 = lambda n: int(n[3]) % 2 == 0
f2 = lambda n: int(n[2] + n[3] + n[4]) % 3 == 0
f3 = lambda n: int(n[5]) % 5 == 0
f4 = lambda n: int(n[4] + n[5] + n[5]) % 7 == 0
f4 = lambda n: int(n[4] + n[5] + n[6]) % 7 == 0
f5 = lambda n: int(n[5] + n[6] + n[7]) % 11 == 0
f6 = lambda n: int(n[6] + n[7] + n[8]) % 13 == 0
f7 = lambda n: int(n[7] + n[8] + n[9]) % 17 == 0

c = filter(f7, filter(f6, filter(f5, filter(f4, filter(f3, filter(f2, filter(f1, pandigitals)))))))

print(sum([int(''.join(n)) for n in c]))
