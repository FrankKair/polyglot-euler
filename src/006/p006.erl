-module(p006).
-export([solve/0]).

square_of_sums() ->
  L = lists:seq(1, 100),
  S = lists:sum(L),
  S * S.

sum_of_squares() ->
  L = lists:seq(1, 100),
  S = lists:map(fun(X) -> X * X end, L),
  lists:sum(S).

solve() ->
  square_of_sums() - sum_of_squares().
