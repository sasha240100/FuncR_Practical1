-module(home_pract2_task15).
-author("alexbuzin").
-export([replicate/2]).

replicate(List, N) -> replicate_helper(List, N, []).

replicate_helper([], _, Acc) -> lists:reverse(Acc);
replicate_helper([H | T], N, Acc) ->
  replicate_helper(T, N, lists:duplicate(N, H) ++ Acc).