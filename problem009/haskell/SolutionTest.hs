import Solution   (pithagoreanProduct)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ pithagoreanProduct 12 ~?= 60
    , pithagoreanProduct 4  ~?= (-1)
    ]
