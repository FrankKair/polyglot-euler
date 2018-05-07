struct Int
  def squared
    self * self
  end
end

def pythagorean?(a, b, c)
  a.squared + b.squared == c.squared
end

def solve
  product = 0
  (0..500).each do |a|
    (a..500).each do |b|
      c = 1000 - a - b
      product = a * b * c if pythagorean?(a, b, c) && a + b + c == 1000
    end
  end
  product
end

puts solve
