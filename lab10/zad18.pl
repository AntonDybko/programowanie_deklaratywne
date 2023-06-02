checkprops(_, []).
checkprops(P, [Prop|Props]) :-
    call(Prop, P),
    checkprops(P, Props).
checkprops(P, [Prop|_]) :-
    \+ call(Prop, P),
    !,
    fail.

animate(fred).
animate(alice).
male(fred).
canine(alice).
feline(fred).