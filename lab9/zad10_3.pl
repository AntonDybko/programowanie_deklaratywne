mergesort([], []).
mergesort([X], [X]).
mergesort(List, Sorted) :-
    List = [_|_],    % Ensure List has more than one element
    length(List, Length),
    Half_len is Length / 2,
    divide(List, Half_len, Left, Right),
    mergesort(Left, SortedLeft),
    mergesort(Right, SortedRight),
    merge(SortedLeft, SortedRight, Sorted).

divide([], 0, [], []).
divide([X], 1, [X], []).
divide([X | T], Half_len, [X | T1], L2) :-
    Half_len >= 1,
    N is Half_len - 1,
    divide(T, N, T1, L2).
divide(L, Half_len, L1, L2) :-
    Half_len < 1,
    L1 = [],
    L2 = L.

merge([], L, L).
merge(L, [], L) :- L \= [].
merge([X|T1], [Y|T2], [X|T]) :-
    X =< Y,
    merge(T1, [Y|T2], T).
merge([X|T1], [Y|T2], [Y|T]) :-
    X > Y,
    merge([X|T1], T2, T).
