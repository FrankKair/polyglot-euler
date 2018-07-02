function solve()
  local sum = 1
  for i=3, 1001, 2 do
    sum = sum + (4*i*i - (6*(i-1)))
  end
  return sum
end

local result = solve()
print(result)
