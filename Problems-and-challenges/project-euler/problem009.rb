#!/usr/bin/env ruby

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class Integer
	def squared
		self * self
	end
end

def is_pythagorean(a, b, c)
	a.squared + b.squared == c.squared
end

def sums_up_to_1000(a, b, c)
	[a,b,c].reduce(:+) == 1000
end

(0..425).each do |a|
	(a..425).each do |b|
		(b..425).each do |c|
			if is_pythagorean(a, b, c) and sums_up_to_1000(a, b, c)
				puts a * b * c
			end
		end
	end
end
