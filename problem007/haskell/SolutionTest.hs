import Solution   (nthPrime)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ nthPrime 3 ~?= 5
    , nthPrime 6 ~?= 13
    ]
