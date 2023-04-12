% Testing plane

% import test data
:- [testData].

% given the above sample data, if Point3 is same as PointList1, then check if Plane is same as Plane1
plane(Point3, Plane) :-
  nth0(0, Point3, P1), nth0(1, Point3, P2), nth0(2, Point3, P3),
  diff(P1, P3, V1), diff(P1, P2, V2),
  calcA(V1, V2, A), calcB(V1, V2, B), calcC(V1, V2, C), calcD(A, B, C, P1, D),
  Plane = [A, B, C, D].

calcA([_, V1Y, V1Z], [_, V2Y, V2Z], A) :-
  A is (V1Y * V2Z) - (V1Z * V2Y).

calcB([V1X, _, V1Z], [V2X, _, V2Z], B) :- 
  B is (V1Z * V2X) - (V1X * V2Z).

calcC([V1X, V1Y, _], [V2X, V2Y, _], C) :-
  C is (V1X * V2Y) - (V1Y * V2X).

calcD(A, B, C, [X, Y, Z], D) :-
  D is (- (A * X) - (B * Y) - (C * Z)).

% difference between two points
diff(P1, P2, D) :-
  nth0(0, P2, P2X), nth0(1, P2, P2Y), nth0(2, P2, P2Z),
  nth0(0, P1, P1X), nth0(1, P1, P1Y), nth0(2, P1, P1Z),
  D = [P2X - P1X, P2Y - P1Y, P2Z - P1Z].

% initiate the test
testPlane :- 
  planeTestPoints(TP), planeTestActualResult(AP),
  plane(TP, Plane),
  Plane = AP.

