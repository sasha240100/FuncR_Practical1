-module(home_pract2_task04).
-author("alexbuzin").
-export([len/1]).

len(List) -> len_helper(List, 0).

len_helper([], Count) -> Count;
len_helper([_ | T], Count) -> len_helper(T, Count + 1).
