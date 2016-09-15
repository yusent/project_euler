import Solution   (sumSquareDiff)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ sumSquareDiff 3  ~?= 22
    , sumSquareDiff 10 ~?= 2640
    ]
