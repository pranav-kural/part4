
% get the support of the given plan in the list of points
support(Plane, Points, Eps, N) :-
    write('Plane: '), write(Plane), nl,
    write('Points: '), length(Points, PL), write(PL), nl,
    write('Eps: '), write(Eps), nl,
    findall(P, (member(P, Points), dist(P, Plane, D), D =< Eps), L),
    length(L, N).

dist([X, Y, Z], [A, B, C, D], DIS) :-
    DIS is (abs(A*X + B*Y + C*Z + D) / sqrt(A*A + B*B + C*C)).
  
% test support
testSupport(Points) :-
    testPlane(Plane), actualSupport(AS), Eps is 0.5,
    support(Plane, Points, Eps, N),
    write('Expected: '), write(AS), nl,
    write(N), nl,
    N = AS.

testPlane(X) :- 
  X = [-19.24478941973517,-22.416438566567404,84.2872272864299,74.52946568859088].

actualSupport(N) :-
  N = 1532.