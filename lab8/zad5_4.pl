sum-up(1, 1).
sum-up(N, X) :- N > 1, N1 is N - 1, sum-up(N1, X1), X is X1 + N.

%sum-up(5, X).
%sum-up(7, X).
