# CSI2120 Project 4

Testing RANSAC implementation using Prolog

## Usage

The file `mainTest.pl` contains the method `runTests` for initiating all tests.

From terminal:

    $ swipl mainTest.pl

Once repl has started, you can initiate the tests:

    ?- runTests.

## Tests Data

The Point Cloud file name is **hardcoded** in the `mainTest.pl` file in the `loadPointCloud` function.

Current tests cases use data based on the **Point Cloud 1** dataset.

All test data is stored in the `testData.pl` file. If you want to test with a different point cloud, please update test data accordingly.
