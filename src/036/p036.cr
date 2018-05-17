class String
  def palindrome? : Bool
    self == reverse
  end
end

struct Int
  def number_palindrome(base)
    case base
    when 2
      self.to_s(2).palindrome?
    when 10
      self.to_s.palindrome?
    end
    false
  end

  def double_base_palindrome
    self.number_palindrome(10) && self.number_palindrome(2)
  end
end

def sum_double_base_palindromes_below(limit)
  (1..limit).select { |x| x.double_base_palindrome }.sum
end

def solve
  sum_double_base_palindromes_below(1_000_000)
end

puts solve
