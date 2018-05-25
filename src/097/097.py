#!/usr/bin/env python3
def solve():
    mod = 10**10
    return (28433 * pow(2, 7830457, mod) + 1) % mod


if __name__ == '__main__':
    result = solve()
    print(result)
