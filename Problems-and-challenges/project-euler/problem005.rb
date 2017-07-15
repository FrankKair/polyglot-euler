#!/usr/bin/env ruby

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Integer
	def divisible_to(x)
		x.downto(1).all? { |e| self % e == 0  }
	end
end

number = 1
while !number.divisible_to(20)
	number += 1
end
puts number