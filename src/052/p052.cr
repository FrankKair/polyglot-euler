struct Int
  def digits
    self.to_s.chars.map(&.to_i).sort!
  end
end

def condition(x)
  x.digits == (x * 2).digits == (x * 3).digits == (x * 4).digits == (x * 5).digits == (x * 6).digits
end

def solve
  x = 1
  while !condition(x)
    x += 1
  end
  x
end

puts solve
