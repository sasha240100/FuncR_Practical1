-module(home_pract2_task08).
-author("alexbuzin").
-export([compress/1]).

compress([]) -> [];
compress([H]) -> [H];

compress([H, H | T]) -> compress([H | T]);
compress([H1, H2 | T]) -> [H1 | compress([H2 | T])].
