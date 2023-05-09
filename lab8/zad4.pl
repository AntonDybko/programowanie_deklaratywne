:- use_module(library(clpfd)).
latin([], 0).
latin([M|Ms], N) :-
    value(M, MV),
    latin(Ms, NV),
    (NV #> MV -> N #= NV - MV ; N #= NV + MV).

value(i, 1).
value(v, 5).
value(x, 10).
value(l, 50).
value(c, 100).
value(d, 500).
value(m, 1000).

%latin([x,l,v,i,i], N).