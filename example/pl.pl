member2(X, L) :-  member2(X, L, Acc), Acc >= 2.
member2(X, [], 0).
member2(X, [X | T], Acc) :- member2(X, T, Acc2), Acc is 1 + Acc2.
member2(X, [_ | T], Acc) :- member2(X, T, Acc).

%member2(3, [2, 3, 7, 3]).

down(N, []) :- N = -1.
down(N, [N | T]) :- N1 is N - 1, down(N1, T).
down(N, [Y | T]) :- dif(N, Y), fail.

%down(4, [4, 3, 2, 1, 0]).