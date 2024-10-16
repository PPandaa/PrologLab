tree_list(Tree, List) :- tree_list(Tree, List, []).

tree_list(empty, List, List).
tree_list(node(Left,Elt,Right), List, List0) :-
    tree_list(Left, List, [Elt|List1]),
    tree_list(Right, List1, List0).