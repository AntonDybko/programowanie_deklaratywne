nth(1,[X | _], X).
nth(N,[_ | T], X) :- N2 is N - 1, nth(N2, T, X).

% nth(3, [2, 4, 6, 7, 8, 9], 6).

ordered([_]).
ordered([]).
ordered([X, Y | T]) :- X =< Y, ordered([Y | T]).

% ordered([1, 4, 6, 7, 8]). - true
% ordered([1, 4, 6, 7, 7, 8]). - true
% ordered([5]). - true
% ordered([]). - true
% ordered([4, 8]). - true
% ordered([1, 4, 9, 7, 8]). - false