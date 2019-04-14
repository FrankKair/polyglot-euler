prod = 0
for a in range(1, 1001):
    for b in range(a + 1, 1001):
        c = 1000 - a - b
        if a**2 + b**2 == c**2:
            prod = a * b * c
            break
    if prod != 0:
        break

print(prod)
