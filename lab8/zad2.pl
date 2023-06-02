% child/2 defines a child-parent relationship
child(X,Y) :- parent(Y,X).

% mother/2 defines a mother-child relationship
mother(X,Y) :- female(X), parent(X,Y).

% sister/2 defines a sister-sibling relationship
sister(X,Y) :- female(X), parent(Z,X), parent(Z,Y), X \= Y.

% has_a_child/1 defines a person who has at least one child
has_a_child(X) :- parent(X, _)

% grandparent/2 defines a grandparent-grandchild relationship
grandparent(X, Y) :- parent(X, Z), parent(Z, Y)

% predecessor/2 defines a direct ancestor-descendant relationship
predecessor(X,Y) :- parent(X,Y).
predecessor(X,Y) :- parent(X,Z), predecessor(Z,Y).