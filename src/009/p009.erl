-module(p009).
-import(lists, [seq/2]).
-export([solve/0]).

solve() ->
  [{A, B}] = [{A, B} || B<-seq(5, 500), A<-seq(4, B), A*A+B*B==(1000-A-B)*(1000-A-B)],
  A*B*(1000-A-B).
