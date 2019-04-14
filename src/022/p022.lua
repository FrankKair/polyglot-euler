function name_score(name)
  local total = 0
  for c in name:gmatch("%u") do
    total = total + c:byte() - string.byte('A') + 1
  end
  return total
end

function load_names()
  local all_names = io.open("p022_names.txt"):read()
  local names = {}
  for name in all_names:gmatch('"(%u+)"') do
    table.insert(names, name)
  end
  table.sort(names)
  return names
end

function solve()
  local total = 0
  local names = load_names()
  for index, name in ipairs(names) do
    local score = name_score(name) * index
    total = total + score
  end
  return total
end

local result = solve()
print(result)
