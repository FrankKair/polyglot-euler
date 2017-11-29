#!/usr/bin/env python


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


def take_prime(n):
    for index, number in enumerate(primes()):
        if index == n - 1:
            return number


print take_prime(10001)
