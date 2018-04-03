#!/usr/bin/env python
import re, string

name_score = lambda name: sum([string.ascii_uppercase.index(c) + 1 for c in name])

def is_triangle(word):
    ns = name_score(word)
    n1 = (-1 + (1 + 8 * ns)**0.5)/2
    n2 = (-1 - (1 + 8 * ns)**0.5)/2
    n = max(n1, n2)
    return int(n) == n

with open('src/042/p042_words.txt', 'r') as f:
    x = f.readlines()

words = re.findall('[A-Z]{1,}', x[0])
words.sort()

print(sum([1 for word in words if is_triangle(word)]))
