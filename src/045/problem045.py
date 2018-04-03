#!/usr/bin/env python
P, H = set(), set()

n = 144

while True:
    t = n*(n+1)/2
    p = n*(3*n-1)/2
    h = n*(2*n-1)

    if t in P and t in H:
        print(int(t))
        break

    P.add(p)
    H.add(h)
    n += 1
