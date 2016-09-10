import Solution   (largestPalindromeProduct)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ largestPalindromeProduct 101110 ~?= 101101
    , largestPalindromeProduct 800000 ~?= 793397
    ]
