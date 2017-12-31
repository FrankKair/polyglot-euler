def square(number) : Int
  number * number
end

squared_sum = (0..100).map { |x| square(x) }.reduce { |sum, number| sum + number }
square_of_the_sum = square((0..100).reduce { |sum, number| sum + number })

puts square_of_the_sum - squared_sum
