#!/usr/bin/env ruby
puts (2**1000).to_s.chars.reduce(0) { |sum, char| sum + char.to_i }

# Ruby 2.4.2
# puts (2**1000).digits.reduce(:+)
