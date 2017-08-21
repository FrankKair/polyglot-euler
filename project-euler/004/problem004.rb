#!/usr/bin/env ruby
class Integer
  def palindrome?
    self == self.to_s.reverse.to_i
  end
end

largest = 0
(100..999).each do |x|
  (100..999).each do |y|
    product = x*y
    if product > largest && product.palindrome?
      largest = product
    end
  end
end
puts largest