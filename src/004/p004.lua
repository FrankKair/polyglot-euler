function is_palindrome(n)
  local str = tostring(n)
  return str == string.reverse(str)
end

function solve()
  local largest = 0
  for a=0, 999 do
    for b=0, 999 do
      local product = a * b
      if product > largest and is_palindrome(product) then
        largest = product
      end
    end
  end
  return largest
end

local result = solve()
print(result)
