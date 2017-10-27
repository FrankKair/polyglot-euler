#!/usr/bin/env ruby
sum = 0
a = 1
b = 2

while b < 4_000_000
  sum += b if b.even?
  a, b = b, a + b
end
puts sum
