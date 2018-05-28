require "big"

struct BigInt
  def self_power
    self ** self
  end
end

def sum_self_powers(limit)
  (1..limit).map(&.to_big_i.self_power).sum
end

def solve
  # Big number as str
  str = sum_self_powers(1000).to_s
  size = str.size
  # Last ten digits of str
  str[size - 10..size]
end

puts solve
