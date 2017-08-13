#!/usr/bin/env ruby
class Integer
  def squared
    self * self
  end
end

def is_pythagorean(a, b, c)
  a.squared + b.squared == c.squared
end

def sums_up_to_1000(a, b, c)
  [a, b, c].reduce(:+) == 1000
end

(0..425).each do |a|
  (a..425).each do |b|
    (b..425).each do |c|
      if is_pythagorean(a, b, c) and sums_up_to_1000(a, b, c)
        puts a * b * c
      end
    end
  end
end
