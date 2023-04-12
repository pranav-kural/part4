
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data for random3Points test

% Sample points
pointsList1([[1,2,33], [4,5,6], [7,8,9]]).
pointsList2([
      [-5.141415625, -4.020067234, 0.242623445], 
      [-5.232860424,	1.134599409, 0.394991503], 
      [1.523155561,	63.49471938, 0.043231924]]).
invalidPointsList([[1,2,33], [4,5,6], [7,8,9], [10,11,12]]).
invalidPointsList2([]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data for plane test

planeTestPoints(X) :-
  X = [
  [11.41738472, -2.858225095, 0.962476455],
  [3.408226942, -0.062265186, -0.12261193],
  [11.64480557, 7.586239857, 3.792138564]
].
planeTestActualResult(X) :- 
  X = [-19.24478941973517,-22.416438566567404,84.2872272864299,74.52946568859088].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data for number of iterations test

% pre-calculated actual result to compare with
actualResult(X) :- X is 168.
% test parameters
getTestParameters(Confidence, Percentage) :-
    Confidence is 0.99,
    Percentage is 0.3.