-module(home_pract2_task07).
-author("alexbuzin").
-export([flatten/1]).

flatten([]) -> [];
flatten([H | T]) -> flatten(H) ++ flatten(T);
flatten(H) -> [H].