struct Int
  def prime?
    return false unless self > 1
    (2..Math.sqrt(self)).any? do |x|
      next if x == self
      return false if (self % x).zero?
    end
    true
  end

  def factors
    factors = (1..Math.sqrt(self)).select { |x| (self % x).zero? }
    factors.each_with_object([] of Int64) do |number, list|
      list << number.to_i64
      list << self / number.to_i64 unless self == number
    end
  end
end

def solve
  600_851_475_143.factors.select(&.prime?).max
end

puts solve
