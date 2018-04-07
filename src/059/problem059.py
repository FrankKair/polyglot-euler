#!/usr/bin/env python
import itertools, string
from operator import xor

with open('src/059/p059_cipher.txt', 'r') as f:
    message = f.readlines()
    message = list(map(int, message[0].replace('\n', '').split(',')))

chars = lambda c: c == 32 or 65 <= c <= 90 or 97 <= c <= 122

for k in itertools.permutations(string.ascii_lowercase, 3):
    key = [ord(i) for i in k] * int(len(message)/2.5)
    msg = [xor(message[i], key[i]) for i in range(len(message))]
    
    # Check ration between a-zA-Z characters other chars
    if len(list(filter(chars, msg)))/len(msg) > 0.9:
        print(sum(msg))
        break
