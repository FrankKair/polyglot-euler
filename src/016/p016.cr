require "big"

def solve
  n = 2.to_big_i
  (n**1000).to_s.chars.reduce(0) { |sum, char| sum + char.to_i }
end

puts solve
