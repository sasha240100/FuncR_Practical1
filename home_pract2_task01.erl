-module(home_pract2_task01).
-author("alexbuzin").
-export([last/1]).

last([H | []]) -> H;
last([_ | T]) -> last(T).
