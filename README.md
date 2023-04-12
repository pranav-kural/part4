# CSI2120 Project 4 - RANSAC - Prolog

Testing RANSAC implementation using Prolog. Built as part of coursework for [CSI2120 - Programming Paradigms](https://catalogue.uottawa.ca/search/?P=CSI%202120)

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

## Sample Output

<img width="628" alt="image" src="https://user-images.githubusercontent.com/17651852/231605325-37374c54-a9db-485d-81c7-4a51079ea693.png">

