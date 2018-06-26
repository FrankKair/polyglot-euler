#!/usr/bin/env python3
from math import sqrt
from itertools import permutations


def square_root_int(x):
    return int(sqrt(x))


def prime(number):
    if number == 1:
        return False
    upper_bound = square_root_int(number) + 1
    for x in range(2, upper_bound):
        if x == number:
            next
        if number % x == 0:
            return False
    return True


def permutations_list(number):
    ps = []
    permutations_ = permutations(str(number))
    for permutation in permutations_:
        num = ''
        for n in permutation:
            num += n
        ps.append(int(num))
    return ps


def circular_prime(x):
    permutationsl = permutations_list(x)
    print(permutationsl)
    for n in permutationsl:
        if prime(n):
            next
        return False
    return True


def solve():
    return sum(1 for x in range(1, 101) if circular_prime(x))


if __name__ == '__main__':
    result = solve()
    print(result)
