import Solution   (smallestMultiple)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ smallestMultiple 10 ~?= 2520
    , smallestMultiple 40 ~?= 5342931457063200
    ]
