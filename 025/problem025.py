#!/usr/bin/env python
index = 3
a = 1
b = 2

while len(str(b)) < 1000:
    a, b = b, a + b
    index += 1
print index