sum-up(N, X) :- sum-up(N, X, 0).

sum-up(0, A, A).
sum-up(N, X, A) :- N > 0, N1 is N - 1, A1 is A + N, sum-up(N1, X, A1).

%sum-up(5, X).
%sum-up(7, X).