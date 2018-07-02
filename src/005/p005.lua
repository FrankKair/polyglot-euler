function gcd(a, b)
  while b > 0 do
    local mod = a % b
    a = b
    b = mod
  end
  return a
end

function lcm(a, b)
  return a * b / gcd(a, b)
end

function smallest_divided_by(limit)
  local result = 1
  for i=2, limit do
    result = lcm(result, i)
  end
  return math.floor(result)
end

function solve()
  -- Smallest number divisible by range 1 to 20.
  return smallest_divided_by(20)
end

local result = solve()
print(result)
