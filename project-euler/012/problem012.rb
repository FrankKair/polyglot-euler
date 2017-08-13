#!/usr/bin/env ruby
class Integer
  def triangle_number
    (1..self).reduce(:+)
  end

  def factors
    (1..Math.sqrt(self)).select { |i| self % i == 0 }.reduce([]) do |list, number|
      list << number
      list << self / number unless self / number == number
      list
    end
  end
end

x = 1
while x.triangle_number.factors.count < 500
  x += 1
end
puts x.triangle_number