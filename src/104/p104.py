import math

pand2 = lambda x: '0' not in x and len(set(x)) == 9
pand1 = lambda x: x % 3 == 0 and pand2(str(x))
fndigits = lambda num, n: num // 10 ** (int(math.log(num, 10)) - n + 1)

a, b = 1, 1
for i in range(3, 1000000):
    F = a + b
    a, b = b, F
    if pand1(a % 1000000000) and pand1(fndigits(a, 9)):
        print(i - 1)
        break

