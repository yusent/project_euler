import Solution   (findNumber)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ findNumber 1 ~?= 3
    , findNumber 2 ~?= 6
    , findNumber 3 ~?= 6
    , findNumber 4 ~?= 28
    ]
