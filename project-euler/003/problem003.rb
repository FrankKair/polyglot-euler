#!/usr/bin/env ruby
class Integer
  def prime?
    return false unless self > 1
    (2..Math.sqrt(self)).any? do |x|
      next if x == self
      return false if self % x == 0
    end
    true
  end

  def factors
    (1..Math.sqrt(self)).select { |x| self % x == 0 }.reduce([]) do |list, number|
      list << number
      list << self / number unless self == number
      list
    end
  end
end

puts 600851475143.factors.select { |x| x.prime? }.max