function solve()
  local sum = 0
  for i=1, 1000 do
    if (i % 3 == 0 or i % 5 == 0) then
      sum = sum + i
    end
  end
  return sum
end

local result = solve()
print(result)
