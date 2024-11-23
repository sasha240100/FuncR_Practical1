-module(home_pract2_task03).
-author("alexbuzin").
-export([element_at/2]).

element_at(List, N) when N > 0 ->
  element_at_helper(List, N, 1);
element_at(_, _) -> undefined.

element_at_helper([], _, _) -> undefined;
element_at_helper([H | _], N, N) -> H;
element_at_helper([_ | T], N, Count) -> element_at_helper(T, N, Count + 1).
