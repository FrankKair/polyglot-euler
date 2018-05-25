#!/usr/bin/env python3
def palindrome(x):
    return str(x) == str(x)[::-1]


def number_palindrome(n, base):
    if base == 2:
        binary = bin(n)[2:]
        return palindrome(binary)

    if base == 10:
        return palindrome(n)

    return False


def double_base_palindrome(x):
    return number_palindrome(x, 10) and number_palindrome(x, 2)


def sum_double_palindrome_numbers_below(limit):
    return sum((x for x in range(1, limit) if double_base_palindrome(x)))


def solve():
    return sum_double_palindrome_numbers_below(1000000)


if __name__ == '__main__':
    result = solve()
    print(result)
