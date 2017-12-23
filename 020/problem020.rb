#!/usr/bin/env ruby
class Integer
  def factorial
    return 1 if zero?
    return 1 if self == 1
    self * (self - 1).factorial
  end
end

# Ruby 2.4.2
def sum_factorial_digits(x)
  x.factorial.digits.reduce(:+)
end

# Ruby 2.2.3
# def sum_factorial_digits(x)
#   x.factorial.to_s.chars.map(&:to_i).reduce(:+)
# end

puts sum_factorial_digits(100)
