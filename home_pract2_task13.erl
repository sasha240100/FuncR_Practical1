-module(home_pract2_task13).
-author("alexbuzin").
-export([decode/1]).

decode([]) -> [];
decode([{Count, Element} | T]) ->
  lists:duplicate(Count, Element) ++ decode(T).
