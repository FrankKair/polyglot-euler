-module(p029).
-export([solve/0]).

solve() ->
  length(sets:to_list(sets:from_list([math:pow(A,B)||A<-lists:seq(2,100),B<-lists:seq(2,100)]))).
