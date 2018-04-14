#!/usr/bin/env ruby
class Integer
  def triangle_number
    (1..self).reduce(:+)
  end

  def factors
    (1..Math.sqrt(self)).select { |i| (self % i).zero? }.each_with_object([]) do |number, list|
      list << number
      list << self / number unless self / number == number
    end
  end
end

x = 1
x += 1 while x.triangle_number.factors.count < 500
puts x.triangle_number
