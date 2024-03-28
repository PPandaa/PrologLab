% Q3
adjacent(E1, E2, List) :-
	append(_, [E1,E2|_], List).

% Q4
adjacent(E1, E2, [E1,E2|_]).
adjacent(E1, E2, [_|Tail]) :-
	adjacent(E1, E2, Tail).