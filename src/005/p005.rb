#!/usr/bin/env ruby
puts (1..20).reduce { |acc, x| acc.lcm(x) }
