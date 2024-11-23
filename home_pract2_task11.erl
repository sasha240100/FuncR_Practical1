-module(home_pract2_task11).
-author("alexbuzin").
-export([encode_modified/1]).

encode_modified([]) -> [];
encode_modified([H]) -> [{1, H}];
encode_modified([H | T]) -> encode_helper(T, H, 1).

encode_helper([], LastElem, Count) ->
  if Count > 1 ->
    [{Count, LastElem}];
    true ->
      [LastElem]
  end;

encode_helper([H | T], LastElem, Count) when H == LastElem ->
  encode_helper(T, LastElem, Count + 1);

encode_helper([H | T], LastElem, Count) ->
  if Count > 1 ->
    [{Count, LastElem} | encode_helper(T, H, 1)];
    true ->
      [LastElem | encode_helper(T, H, 1)]
  end.