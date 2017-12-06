#!/usr/bin/env ruby
class Integer
  def factorial
    return 1 if zero?
    return 1 if self == 1
    self * (self - 1).factorial
  end
end

def combination(n, k)
  n.factorial / (k.factorial * (n - k).factorial)
end

def count_routes(k)
  combination(2 * k, k)
end

puts count_routes(20)
