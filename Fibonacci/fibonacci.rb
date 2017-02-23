#!/usr/bin/env ruby

def fibonacci(n)
	case n
	when 0 then 0
	when 1 then 1
	else fibonacci(n-2) + fibonacci(n-1)
	end
end

n = ARGV[0].to_i
puts fibonacci(n)