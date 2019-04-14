require 'mathn'

def solve
  largest_prime_pandigital = 1
  permutations_array = [1, 2, 3, 4, 5, 6, 7].permutation.to_a

  permutations_array.each do |p|
    number = p.join('').to_i
    largest_prime_pandigital = number if Prime.prime?(number)
  end
  largest_prime_pandigital
end

result = solve
puts result
