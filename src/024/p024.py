#!/usr/bin/env python3
from itertools import permutations


def lexicographic_permutations(string):
    return list(permutations(string))


def solve():
    lp = lexicographic_permutations('0123456789')
    return lp[999999]


if __name__ == '__main__':
    result = solve()
    print(result)
