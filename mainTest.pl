
% method to read point cloud and get list of points
:- [ransac_file].
:- [random3PointsTest].
:- [planeTest].
:- [supportTest].
:- [iterationsTest].

loadPointCloud(FileName, Points) :-
    read_xyz_file(FileName, Points).

runTests :-
    loadPointCloud('data/Point_Cloud_1_No_Road_Reduced.xyz', Points),
    write('########### random3Points ###########'), nl,
    (testRandomPoints(Points) -> write('test successful'); write('test failed')), nl, nl,
    write('########### plane ###########'), nl,
    (testPlane -> write('test successful'); write('test failed')), nl, nl,
    write('########### support ###########'), nl,
    (testSupport(Points) -> write('test successful'); write('test failed')), nl, nl,
    write('########### number of iterations ###########'), nl,
    (testIterations -> write('test successful'); write('test failed')).