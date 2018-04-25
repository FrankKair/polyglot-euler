-module(p015).
-export([solve/0]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

combination(N, K) -> 
  C = factorial(N) / (factorial(K) * factorial(N - K)),
  round(C).

count_routes(K) -> combination(2 * K, K).

solve() -> count_routes(20).
