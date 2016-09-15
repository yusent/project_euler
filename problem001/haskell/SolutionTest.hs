import Solution   (sumMultiplesOf3And5)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ sumMultiplesOf3And5 100        ~?= 2318
    , sumMultiplesOf3And5 1000000000 ~?= 233333333166666668
    ]
