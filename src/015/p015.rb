class Integer
  def factorial
    return 1 if zero?
    self * (self - 1).factorial
  end
end

def combination(n, k)
  n.factorial / (k.factorial * (n - k).factorial)
end

def count_routes(k)
  combination(2 * k, k)
end

def solve
  count_routes(20)
end

puts solve
