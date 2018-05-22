class String
  def palindrome?
    self == reverse
  end
end

struct Int
  def number_palindrome(base)
    case base
    when 2
      to_s(2).palindrome?
    when 10
      to_s.palindrome?
    end
  end

  def double_base_palindrome
    number_palindrome(10) && number_palindrome(2)
  end
end

def sum_double_base_palindromes_below(limit)
  (1..limit).select(&.double_base_palindrome).sum
end

def solve
  sum_double_base_palindromes_below(1_000_000)
end

puts solve
