def solve():
    index = 3
    a = 1
    b = 2

    while len(str(b)) < 1000:
        a, b = b, a + b
        index += 1

    return index


if __name__ == '__main__':
    result = solve()
    print(result)
