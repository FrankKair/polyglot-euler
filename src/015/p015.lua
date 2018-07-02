function combination(n, k)
  local c = 1
  for i=0, k-1 do
    c = c * (n - i)
    c = c / (i + 1)
  end
  return math.floor(c)
end

function solve()
  return combination(40, 20)
end

local result = solve()
print(result)
