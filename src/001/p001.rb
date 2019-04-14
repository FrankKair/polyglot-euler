def solve
  (0..999).select { |x| (x % 3).zero? || (x % 5).zero? }.reduce(:+)
end

puts solve
