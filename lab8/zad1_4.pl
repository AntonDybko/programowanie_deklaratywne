gcd(0, N, N) :- N > 0.
gcd(N, 0, N) :- N > 0.
gcd(N, N, N) :- N > 0.
gcd(N1, N2, G) :- N2 > 0, M is N1 mod N2, gcd(N2, M, G).

%gcd(24, 36, G).