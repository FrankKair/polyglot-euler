#!/usr/bin/env python
n = 1
while len(set([''.join(set(str(n*i))) for i in range(1, 7)])) != 1:
	n += 1
print(n)
