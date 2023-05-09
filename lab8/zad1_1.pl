member(X, [X|_]).
member(X, [_|L]) :- member(X, L).

%member(2, [1,2,3]).