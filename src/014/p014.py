#!/usr/bin/env python


def collatz(n):
    seq = [n]
    while n > 1:
        if n % 2 == 0:
            n = n / 2
        else:
            n = 3 * n + 1
        seq.append(int(n))
    return seq


sizes = [len(collatz(i)) for i in range(1, int(1e6))]

print(sizes.index(max(sizes)) + 1)
