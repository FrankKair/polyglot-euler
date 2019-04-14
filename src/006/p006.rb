class Integer
  def squared
    self * self
  end
end

def solve
  squared_sum = (0..100).map(&:squared).reduce(:+)
  square_of_the_sum = (0..100).reduce(:+).squared
  square_of_the_sum - squared_sum
end

puts solve
