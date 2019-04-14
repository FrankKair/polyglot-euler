-module(p016).
-export([solve/0]).

solve() ->
  lists:foldl(fun(X,Y)->X+Y-48 end, 0,
              integer_to_list(round(math:pow(2, 1000)))).
