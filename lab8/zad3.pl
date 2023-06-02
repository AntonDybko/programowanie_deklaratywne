f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N) :- f(X,N).

%f(s(1),A).
%f(s(s(1)),two).
%f(s(s(s(s(s(s(1)))))),C).
%f(D,three).