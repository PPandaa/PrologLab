sumlist([], 0).
sumlist([Head | Tail], Sum) :-
    sumlist(Tail, Temp_Sum),
    Sum is Head + Temp_Sum.

% sumlist([1, 2, 3], Sum).