#!/usr/bin/env ruby

sum = 0
a = 1
b = 2
while sum < 4000000
	if b.even?
		sum += b
	end
	temp = b
	b = a + b
	a = temp
end
puts sum