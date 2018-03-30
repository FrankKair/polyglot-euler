#!/usr/bin/env python
f1, f2, i = 1, 1, 1
while len(str(f2)) < 1000:
	f1, f2 = f2, f1 + f2
	i += 1

print(i + 1)
