pos(X) :- X > 0.
neg(X) :- X < 0.

filter(Prop, [], []).
filter(Prop, [X | T1], [X | T2]) :- 
    call(Prop, X),
    filter(Prop, T1, T2).
filter(Prop, [X | T1], L2) :- 
    \+ call(Prop, X),
    filter(Prop, T1, L2).
