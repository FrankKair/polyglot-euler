-module(p028).
-export([solve/0]).

spiral_diagonal_sum(1) -> 1;
spiral_diagonal_sum(X) when X > 0 -> 4*X*X - 6*(X-1) + spiral_diagonal_sum(X-2).

solve() -> spiral_diagonal_sum(1001).
