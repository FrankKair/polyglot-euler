#!/usr/bin/env python
ps = set()

for a in range(1, 100):
    iter = range(1000, 10000) if a < 10 else range(100, 1000)
    for b in iter:
        p = a * b
        alg = list(str(a) + str(b) + str(p))
        if len(alg) == 9 and len(set(alg)) == 9 and '0' not in alg:
            ps.add(p)

print(sum(ps))
