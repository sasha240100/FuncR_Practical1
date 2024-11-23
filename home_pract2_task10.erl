-module(home_pract2_task10).
-author("alexbuzin").
-export([encode/1]).

encode([]) -> [];
encode(List) -> encode_helper(List, 1, []).

encode_helper([], _, Acc) -> lists:reverse(Acc);
encode_helper([_], Count, Acc) -> lists:reverse([{Count, hd(Acc)} | Acc]);
encode_helper([H, H | T], Count, Acc) -> encode_helper([H | T], Count + 1, Acc);
encode_helper([H | T], Count, Acc) ->
  encode_helper(T, 1, [{Count, H} | Acc]).