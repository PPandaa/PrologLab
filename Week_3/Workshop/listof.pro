% Q1

listof(_, []).
listof(Elt, [Elt|List]) :-
	listof(Elt, List).