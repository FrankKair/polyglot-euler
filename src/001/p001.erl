-module(p001).
-export([solve/0]).

solve() ->
  lists:sum([X || X <- lists:seq(1, 999), (X rem 3 =:= 0) or (X rem 5 =:= 0)]).
