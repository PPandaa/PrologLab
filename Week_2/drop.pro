drop(N, List, Back) :-
    length(Front, N),
    append(Front, Back, List).

% drop(1, [1, 2, 3], Back)