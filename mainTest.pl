
% method to read point cloud and get list of points
:- [ransac_file].
:- [random3PointsTest].
:- [planeTest].
:- [supportTest].
:- [iterationsTest].

% function to load the list of points
loadPointCloud(Points) :-
    % can change the file name here to test different point clouds
    % Be aware that some tests are specifically build for Point Cloud 1 data
    % so they might fail if you use a different point cloud
    % To use a different point cloud, simply update test data
    read_xyz_file('data/Point_Cloud_1_No_Road_Reduced.xyz', Points).

runTests :-
    loadPointCloud(Points),
    write('########### random3Points ###########'), nl,
    (testRandomPoints(Points) -> write('test successful'); write('test failed')), nl, nl,
    write('########### plane ###########'), nl,
    (testPlane -> write('test successful'); write('test failed')), nl, nl,
    write('########### support ###########'), nl,
    (testSupport(Points) -> write('test successful'); write('test failed')), nl, nl,
    write('########### number of iterations ###########'), nl,
    (testIterations -> write('test successful'); write('test failed')).