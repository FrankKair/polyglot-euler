require "big"

struct BigInt
  def factorial
    return 1 if zero?
    self * (self - 1).factorial
  end
end

def sum_factorial_digits(x)
  x.to_big_i.factorial.to_s.chars.map(&.to_i).sum
end

def solve
  sum_factorial_digits(100)
end

puts solve
