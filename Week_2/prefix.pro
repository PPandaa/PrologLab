prefix([], _).
prefix([X | Xs], [X | Ys]) :-
    prefix(Xs, Ys).

% prefix([a, b], [a, b, f]).