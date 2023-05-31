node(X, L, R).
%node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil)).

size(nil, 0).
size(node(_, L, R), Size) :- size(L, SizeL), size(R, SizeR), Size is SizeL + SizeR + 1.
%size(node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil)), Size).

search(node(X, _, _), X).
search(node(_, _, R), X) :- search(R, X).
search(node(_, L, _), X) :- search(L, X).
%search(node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil)), 7).

max(nil, _) :- false.
max(node(X, nil, nil), X).
max(node(H, nil, R), X):-
    max(R, XR),
    max_helper(H, XR, X).
max(node(H, L, nil), X):-
    max(L, XL),
    max_helper(H, XL, X).
max(node(H, L, R), X):-
    max(L, XL),
    max(R, XR),
    max_helper(H, XL, XR, X).

max_helper(X, X2, X) :- X >= X2.
max_helper(X, X2, X2) :- X2 >= X.
max_helper(X, XL, XR, X) :- X >= XL, X >= XR.
max_helper(X, XL, XR, XL) :- XL >= X, XL >= XR.
max_helper(X, XL, XR, XR) :- XR >= X, XR >= XL.
%max(node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil)), 9).

times(_, nil, nil).
times(N, node(X, L, R), node(X2, L2, R2)) :- X2 is X * N, times(N, L, L2), times(N, R, R2).
%times(3, node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil)), T2).
%times(3, node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil)), node(15, node(12, nil, nil), node(27, node(21, nil, nil), nil))).

preorder(nil, []).
preorder(node(X, Left, Right), [X | T]) :-
    preorder(Left, LeftList),
    preorder(Right, RightList),
    append(LeftList, RightList, T).
%preorder(node(5, node(4, nil, nil), node(9, node(7, nil, nil), nil))).
