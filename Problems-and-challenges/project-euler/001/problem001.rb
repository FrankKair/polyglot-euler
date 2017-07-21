#!/usr/bin/env ruby

puts ((0..999).select { |x| (x % 3 == 0) or (x % 5 == 0) }).reduce(:+)