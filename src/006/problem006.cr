struct Int
  def square : Int
    self * self
  end
end

squared_sum = (0..100).map(&.square).sum
square_of_the_sum = (0..100).sum.square

puts square_of_the_sum - squared_sum
