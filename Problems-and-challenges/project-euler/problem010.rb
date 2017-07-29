#!/usr/bin/env ruby
class Integer
  	def prime?
  		return false unless self > 1
  		(2..Math.sqrt(self)).any? do |x|
  			if x == self
  				next
  			end
  			if self % x == 0
  				return false
  			end
  		end
  		true
  	end
end

puts (0..2000000).select { |x| x.prime? }.reduce(:+)