:- ensure_loaded(borders).
:- ensure_loaded(cities).
:- ensure_loaded(countries).
:- ensure_loaded(rivers).


% Q1 - (4)
country(C) :-
    country(X, _, _, _, _, _, _, _).


% Q1 - (5)
larger(C1, C2) :-
    area(C1, Area1),
    area(C2, Area2),
    Area1 > Area2.


% Q1 - (6)
river_country(River, Country) :-
    river(River, Countries),
    member(Country, Countries),
    country(Country).

country_region(Country, Region) :-
    country(Country,Region,_,_,_,_,_,_).


% Q2
multiregion_river(River) :-
    river(River, Countries),
    member(Country1, Countries),
    member(Country2, Countries),
    country(Country1, Region1, _, _, _, _, _, _),
    country(Country2, Region2, _, _, _, _, _, _),
    Region1 \= Region2.


% Q3
largest_city(Country, City) :-
    city(City, Country, Pop),
    \+ (city(_, Country, Pop2), Pop2 > Pop).