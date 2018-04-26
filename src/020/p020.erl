-module(p020).
-export([solve/0]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

digits(0) -> 0;
digits(N) when N < 10 -> [N];
digits(N) when N >= 10 -> digits(N div 10) ++ [N rem 10].

solve() ->
  L = digits(factorial(100)),
  lists:sum(L).
