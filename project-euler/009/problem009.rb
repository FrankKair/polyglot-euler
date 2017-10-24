#!/usr/bin/env ruby
class Integer
  def squared
    self * self
  end
end

def is_pythagorean(a, b, c)
  a.squared + b.squared == c.squared
end

(0..1000).each do |a|
  (a..1000).each do |b|
    c = 1000 - a - b
    if is_pythagorean(a, b, c) && a + b + c == 1000
      puts a * b * c
    end
  end
end
