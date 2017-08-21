#!/usr/bin/env ruby
class Integer
  def factors
    (1..Math.sqrt(self)).select { |x| self % x == 0 }.reduce([]) do |list, number|
      list << number
      list << self / number unless self == number || number == 1
      list
    end
  end

  def amicable?
    sum_of_factors = self.factors.reduce(:+)
    return false if self == sum_of_factors
    self == sum_of_factors.factors.reduce(:+)
  end
end

puts (1..10000).find_all { |number| number.amicable? }.reduce(:+)