import Solution   (subSetProducts)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ maximum (subSetProducts 5 6 [3, 6, 7, 5, 3, 5, 6, 2, 9, 1]) ~?= 3150
    , maximum (subSetProducts 5 6 [2, 7, 0, 9, 3, 6, 0, 6, 2, 6]) ~?= 0
    ]
