-module(p004).
-import(lists, [duplicate/2, flatmap/2, reverse/1, search/2, seq/3, usort/1, zipwith/3]).
-export([solve/0]).

prod_is_palindrome(C) when C rem 10 == 0 -> false;
prod_is_palindrome(C) -> 
  C == list_to_integer(reverse(integer_to_list(C))).

make_list(X) -> 
  zipwith(fun(A, B)-> A*B end,
                duplicate(X-98, X), 
                seq(X, 99, -1)).

solve() ->
  search(fun(X)-> prod_is_palindrome(X) end,
    reverse(usort(
        flatmap(fun(X)-> make_list(X) end, 
                seq(999, 99, -1))))).

% TODO:
% 1> c(p004).
% {ok,p004}
% 2> p004:solve().
% ** exception error: undefined function lists:search/2
% 3> 