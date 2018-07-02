function solve()
  local product = 1
  for a=0, 500 do
    for b=a+1, 500 do
      local c = 1000 - b - a
      local sum = a + b + c
      if a*a + b*b == c*c and sum == 1000 then
        product = a * b * c
      end
    end
  end
  return product
end

local result = solve()
print(result)
