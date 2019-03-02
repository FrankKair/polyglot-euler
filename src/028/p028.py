def solve():
    return sum(4 * x * x - (6 * (x - 1)) for x in range(3, 1003, 2))


if __name__ == '__main__':
    result = solve()
    print(result)
