#!/usr/bin/env ruby

class String
	def has_unique_characters
		(0..self.size).each do |i|
			(1..self.size).each do |j|
				if self[i] == self[j]
					false
				end
			end
		end
		true
	end
end

class String
	def has_unique_characters_2
		chars = []
		self.each_char do |char|
			if chars.include?(char)
				false
			end
			chars.push(char)
		end
		true
	end
end