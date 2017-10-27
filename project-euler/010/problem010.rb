#!/usr/bin/env ruby
class Integer
  def prime?
    return false unless self > 1
    (2..Math.sqrt(self)).any? do |x|
      next if x == self
      return false if (self % x).zero?
    end
    true
  end
end

puts (0..2_000_000).select(&:prime?).reduce(:+)
