#!/usr/bin/env ruby

# Memoization - Dynamic Programming
# Naive and slow
def fibonacci_memoized(n)
  cache = { 0 => 0, 1 => 1 }
  if cache.has_key?(n)
    return cache.fetch(n)
  end
  cache[n] = fibonacci_memoized(n-2) + fibonacci_memoized(n-1)
  cache[n]
end

number = 2
while fibonacci_memoized(number).to_s.size < 1000
  number += 1
end
puts number