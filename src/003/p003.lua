function solve()
  local n = 600851475143
  local limit = n / 2
  local i = 3

  while i < limit do
    while n % i == 0 do
      n = n / i
      limit = n / 2
    end
    i = i + 2
  end
  return math.floor(n)
end


local result = solve()
print(result)
