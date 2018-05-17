function palindrome(n)
  local str = tostring(n)
  return str == string.reverse(str)
end

function to_binary_str(x)
  local bin_str = ""
  -- ~= "not equals"
  while x ~= 1 and x ~= 0 do
    bin_str = tostring(x % 2)..bin_str
    x = math.modf(x / 2)
  end
  bin_str = tostring(x)..bin_str
  return bin_str
end

function number_palindrome(n, base)
  if base == 2 then
    return palindrome(to_binary_str(n))
  end

  if base == 10 then
    return palindrome(n)
  end

  return false
end

function double_base_palindrome(n)
  return number_palindrome(n, 10) and number_palindrome(n, 2)
end

function sum_double_base_palindromes_below(limit)
  local sum = 0
  for i=1, limit do
    if double_base_palindrome(i) then
      sum = sum + i
    end
  end
  return sum
end

function solve()
  return sum_double_base_palindromes_below(1000000)
end

local result = solve()
print(result)
