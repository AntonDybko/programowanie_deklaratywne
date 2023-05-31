permutation([], []).
permutation(L, [X|T]) :-
    select_(X, L, Rest),
    permutation(Rest, T).

select_(X, [X|T], T).
select_(X, [H|T], [H|T1]) :- select_(X, T, T1).