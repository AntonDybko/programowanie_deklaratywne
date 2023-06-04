last(X,[X]).
last(X,[_|T]) :- last(X, T).

delete(_, [], []).
delete(X, [Y|T1], [Y|T2]) :- dif(X, Y), delete(X, T1, T2).
delete(X, [X|T1], L2) :- delete(X, T1, L2).

delete([],[]).
delete([_, _, _], []) :- delete([], []).
delete([X | T], [X | T2]) :- delete(T, T2).

reverse_check_helper([], L2, L2).
reverse_check_helper([X|Xs], Acc, L2) :-
    reverse_check_helper(Xs, [X|Acc], L2).
reverse_check(L1, L2) :- reverse_check_helper(L1, [], L2).

evenlength(L) :- even_helper(L, 0).
even_helper([], Acc) :- 0 =:= Acc mod 2.
even_helper([_ | T], Acc) :- Acc2 is Acc + 1, even_helper(T, Acc2).

oddlength(L) :- odd_helper(L, 0).
odd_helper([], Acc) :- 0 =\= Acc mod 2.
odd_helper([_ | T], Acc) :- Acc2 is Acc + 1, odd_helper(T, Acc2).

shift([H | T], L2) :- append(T, [H], L1_shifted), check_shifted(L1_shifted, L2).
check_shifted(L2, L2).

append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).

reverse(List, Reversed) :- reverseHelper(List, [], Reversed).
reverseHelper([], Acc, Acc).
reverseHelper([H|T], Acc, Reversed) :-reverseHelper(T, [H|Acc], Reversed).

quadrat([], []).
quadrat([H1 | T1], [H2 | T2]) :- H2 =:= H1 * H1, quadrat(T1, T2).

combine([],[],[]).
combine([H1 | T1], [H2 | T2], [[H1, H2] | T3]) :- combine(T1, T2, T3).

palindrom([_]).
palindrom([]).
palindrom([H1 | T]) :- reverse(T, [H2 | R]), H1 = H2, palindrom(R).

p(X, [Y, X, Z | _], Y, Z).
p(X, [_| T], Y, Z) :- p(X, T, Y, Z).

q(X, [H, X, X | _], [H, X, X]).
q(X, [X, X | _], [X, X]).
q(X, [H | T1], [H | T2]) :- q(X, T1, T2).
%q(3,[1,2,3,3,1,2,4], [1,2,3,3]).