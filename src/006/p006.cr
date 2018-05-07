struct Int
  def square : Int
    self * self
  end
end

def solve
  squared_sum = (0..100).map(&.square).sum
  square_of_the_sum = (0..100).sum.square
  square_of_the_sum - squared_sum
end

puts solve
