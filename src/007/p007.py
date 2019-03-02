def prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False

    return True


t, n = 0, 2
while t != 10001:
    t += prime(n)
    n += 1

print(n - 1)
