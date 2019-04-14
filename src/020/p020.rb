class Integer
  def factorial
    return 1 if zero?
    self * (self - 1).factorial
  end
end

def sum_factorial_digits(x)
  x.factorial.to_s.chars.map(&:to_i).reduce(:+)
end

def solve
  sum_factorial_digits(100)
end

puts solve
