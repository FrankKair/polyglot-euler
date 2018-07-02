function sum_even_fibs_below(limit)
  local sum = 0
  local a = 1
  local b = 2

  while b < limit do
    if b % 2 == 0 then
      sum = sum + b
    end
    a, b = b, a + b
  end
  return sum
end

function solve()
  return sum_even_fibs_below(4000000)
end

local result = solve()
print(result)
