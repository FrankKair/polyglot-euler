class Integer
  def prime?
    return false unless self > 1
    (2..Math.sqrt(self)).any? do |x|
      next if x == self
      return false if (self % x).zero?
    end
    true
  end

  def factors
    (1..Math.sqrt(self)).select { |x| (self % x).zero? }.each_with_object([]) do |number, list|
      list << number
      list << self / number unless self == number
    end
  end
end

def solve
  600_851_475_143.factors.select(&:prime?).max
end

puts solve
