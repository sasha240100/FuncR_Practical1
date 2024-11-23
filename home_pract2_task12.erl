-module(home_pract2_task12).
-author("alexbuzin").
-export([decode_modified/1]).

decode_modified([]) -> [];
decode_modified([{Count, Element} | T]) ->
  lists:duplicate(Count, Element) ++ decode_modified(T);
decode_modified([H | T]) -> [H | decode_modified(T)].
