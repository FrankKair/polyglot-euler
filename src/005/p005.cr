def solve
  (1..19).reduce { |acc, x| acc.lcm(x) }
end

puts solve
