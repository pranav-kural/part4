% test reading of point cloud file 

:- [ransac_file].

testReadingFile :-
    write('Test started'), nl,
    read_xyz_file('Point_Cloud_1_No_Road_Reduced.xyz', Points),
    write('Points loaded Successfully. Length of points: '), length(Points, L), write(L), nl, printFew(Points).

firstElement([H|_], H).
getTail([_|T], T).

printFew(L) :-
    firstElement(L, H),
    write('First element: '), write(H), nl,
    getTail(L, T), firstElement(T, X),
    write('Second element: '), write(X), nl,
    getTail(T, G), firstElement(G, Y),
    write('Third element: '), write(Y), nl,
    last(L, B),
    write('Last element: '), write(B), nl.
