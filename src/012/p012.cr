struct Int
  def triangle_number
    (1..self).sum
  end

  def factors
    factors = (1..Math.sqrt(self)).select { |x| (self % x).zero? }
    factors.each_with_object([] of Int32) do |number, list|
      list << number
      list << self / number unless self == number
    end
  end
end

def solve
  x = 1
  while x.triangle_number.factors.size < 500
    x += 1
  end
  x.triangle_number
end

puts solve
