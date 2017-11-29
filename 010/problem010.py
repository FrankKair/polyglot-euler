#!/usr/bin/env python

from itertools import takewhile


def primes():
    D = {}
    q = 2

    while True:
        p = D.pop(q, None)
        if p:
            x = p + q
            while x in D:
                x += p
            D[x] = p
        else:
            D[q * q] = q
            yield q
        q += 1


print sum(takewhile(lambda x: x < 2000000, primes()))
