isdivisible(n) = (0 == (n % 3)) || (0 == (n % 5))

solve() = sum(filter(isdivisible, 1:999))

println(solve())