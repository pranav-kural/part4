% Test for number of iterations

% calculate the number of iterations needed to reach a certain confidence level
ransac-number-of-iterations(Confidence, Percentage, N) :-
    N is truncate(log(1 - Confidence) / log(1 - (Percentage * Percentage * Percentage))).

actualResult(X) :- X is 168.

% Test for number of iterations
testIterations :-
    ransac-number-of-iterations(0.99, 0.3, N),
    actualResult(X),
    write('Number of iterations: '), write(N), nl,
    N =:= X.