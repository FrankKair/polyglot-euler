require 'mathn'

def solve
  Prime.take_while { |x| x < 2_000_000 }.reduce(:+)
end

puts solve
