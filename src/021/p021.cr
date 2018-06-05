struct Int
  def factors
    factors = [1]
    upper_bound = Math.sqrt(self).to_i
    (2..upper_bound).each do |x|
      if self % x == 0
        factors << (x)
        factors << (self / x).to_i
      end
    end
    factors
  end

  def amicable?
    factors_sum = self.factors.sum
    return false if self == factors_sum
    self == factors_sum.factors.sum
  end
end

def solve
  (1..10000).select(&.amicable?).sum
end

puts solve
