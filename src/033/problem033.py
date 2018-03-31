#!/usr/bin/env python
def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

def naive_div(n, d):
    nn = list(str(n))
    dd = list(str(d))

    c = [i for i in nn if i in dd]

    if not c or '0' in c or len(c) == 2:
        return False

    nn.remove(c[0])
    dd.remove(c[0])

    if '0' in dd:
        return False

    return n/d == int(''.join(nn))/int(''.join(dd))

frac_n, frac_d = 1, 1
for n in range(10, 100):
    for d in range(n, 100):
        if naive_div(n, d):
            frac_n *= n
            frac_d *= d

print(frac_d/gcd(frac_n, frac_d))
