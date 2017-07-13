#!/usr/bin/env ruby

# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 times 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

class Integer
	def palindrome?
		self == self.to_s.reverse.to_i
	end
end

largest = 0
(100..999).each do |x|
	(100..999).each do |y|
		product = x*y
		if product > largest and product.palindrome?
			largest = product
		end
	end
end
puts largest