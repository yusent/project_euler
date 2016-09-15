import Solution   (powerDigitSum)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ powerDigitSum 3 ~?= 8
    , powerDigitSum 4 ~?= 7
    , powerDigitSum 7 ~?= 11
    ]
