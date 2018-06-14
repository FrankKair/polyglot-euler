function isdivisible(n)
   (0 == (n % 3)) || (0 == (n % 5))
end

function solve()
   sum(filter(isdivisible, 1:999))
end

result = solve()
println(result)
