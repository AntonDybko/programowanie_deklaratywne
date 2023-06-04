maximum(X,Y,X) :- X >= Y, !.
maximum(X,Y,Y).

%prolog odpowiada "true", bo (5, 2, 2) nie dopasuje się do piwerszej klauzuli, a w drugiej nie ma sprawdzania Y >= X, dlatego gdy 
% dopasuje do drugiej klauzuli, od razu zwróci "true", potrzebujemy dodać sprawdzanie Y >= X, żeby ten kod działał, w tym wypadku błąd
%powoduje nie !, ten "!" w danym wypadku w ogóle nic nie robi, bo nie mamy rekurencyjnych wywołań.

maximum2(X,Y,X) :- X >= Y, !.
maximum2(X,Y,Y) :- X =< Y, !.

%co to jest fact, rule i cut w tym zadaniu???