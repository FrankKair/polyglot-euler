#!/usr/bin/env python3
def solve():
    acc = 1
    for x in range(3, 1003, 2):
        acc += 4 * x * x - (6 * (x - 1))
    return acc


if __name__ == '__main__':
    result = solve()
    print(result)
