#!/usr/bin/env ruby

class Integer
	def squared
		self * self
	end
end

squared_sum = (0..100).map { |x| x * x }.reduce(:+)
square_of_the_sum = (0..100).reduce(:+).squared

puts square_of_the_sum - squared_sum
