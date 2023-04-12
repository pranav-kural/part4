% Test for number of iterations

% import test parameters
:- [testData].

% calculate the number of iterations needed to reach a certain confidence level
ransac-number-of-iterations(Confidence, Percentage, N) :-
    N is truncate(log(1 - Confidence) / log(1 - (Percentage * Percentage * Percentage))).

% Test for number of iterations
testIterations :-
    getTestParameters(Confidence, Percentage),
    ransac-number-of-iterations(Confidence, Percentage, N),
    actualResult(X),
    write('Number of iterations: '), write(N), nl,
    N =:= X.