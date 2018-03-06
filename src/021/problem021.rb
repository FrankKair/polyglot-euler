#!/usr/bin/env ruby
class Integer
  def factors
    (1..Math.sqrt(self)).select { |x| (self % x).zero? }.each_with_object([]) do |number, list|
      list << number
      list << self / number unless self == number || number == 1
    end
  end

  def amicable?
    sum_of_factors = factors.reduce(:+)
    return false if self == sum_of_factors
    self == sum_of_factors.factors.reduce(:+)
  end
end

puts (1..10_000).find_all(&:amicable?).reduce(:+)
