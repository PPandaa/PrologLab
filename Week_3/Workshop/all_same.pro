% Q2
listof(_, []).
listof(Elt, [Elt|List]) :-
	listof(Elt, List).

all_same(List) :-
	listof(_, List).