is_list([]).
is_list([X|L]) :- is_list(L).