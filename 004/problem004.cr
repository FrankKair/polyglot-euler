def palindrome?(number) : Bool
  number == number.to_s.reverse.to_i
end

largest = 0
(100..999).each do |x|
  (100..999).each do |y|
    product = x * y
    largest = product if product > largest && palindrome?(product)
  end
end
puts largest
