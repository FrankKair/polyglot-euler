def solve
  (1..20).reduce { |acc, x| acc.lcm(x) }
end

puts solve
