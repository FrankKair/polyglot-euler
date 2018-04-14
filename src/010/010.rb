#!/usr/bin/env ruby
require 'mathn'
puts Prime.take_while { |x| x < 2_000_000 }.reduce(:+)
