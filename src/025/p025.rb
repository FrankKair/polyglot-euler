def solve
  number = 3
  a = 1
  b = 2

  while b.to_s.length < 1000
    a, b = b, a + b
    number += 1
  end
  number
end

puts solve
