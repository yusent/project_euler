import Solution   (sumEvenFibos)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ sumEvenFibos 10  ~?= 10
    , sumEvenFibos 100 ~?= 44
    ]
