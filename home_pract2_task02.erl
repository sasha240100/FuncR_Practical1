-module(home_pract2_task02).
-author("alexbuzin").
-export([but_last/1]).

but_last(List) ->
  case lists:reverse(List) of
    [A, B | _] -> [B, A];
    _ -> []
  end.
