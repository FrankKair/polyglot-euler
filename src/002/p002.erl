-module(p002).
-export([solve/0]).

sum_if_even(A, B) when A rem 2 == 0 -> A + B;
sum_if_even(_, B) -> B.

solve({Last, _, Res}) when Last > 4000000 -> Res;
solve({Last, SLast, Acc}) -> solve({Last + SLast, Last, sum_if_even(Last, Acc)}).

solve() -> solve({1,1,0}).
