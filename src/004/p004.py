palindrome = lambda s: s == s[::-1]

print(max([i * j for i in range(999, 900, -1) \
    for j in range(999, 900, -1) if palindrome(str(i * j))]))
