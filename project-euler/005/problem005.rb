#!/usr/bin/env ruby
number = (1..20).reduce do |acc, x|
  acc.lcm(x)
end

# Smallest number evenly divisible by all numbers from 1 to 20.
puts number