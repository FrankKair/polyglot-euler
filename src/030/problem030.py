#!/usr/bin/env python
check = lambda n: n == sum([i**5 for i in map(int, list(str(n)))])
print(sum([i for i in range(2, 200000) if check(i)]))
