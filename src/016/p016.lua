function solve()
  local str = string.format("%.0f", 2 ^ 1000)
  local sum = 0
  for i=1, #str do
    local char = str:sub(i, i)
    sum = sum + char
  end
  return math.floor(sum)
end

local result = solve()
print(result)
