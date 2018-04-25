def solve
  (1..1001).step(2).reduce { |acc, x| acc += 4 * x * x - (6 * (x - 1)) }
end

puts solve
