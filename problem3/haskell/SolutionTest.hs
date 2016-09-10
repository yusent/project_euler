import Solution   (largestPrimeFactor)
import Test.HUnit (Test(TestList), Counts, runTestTT, (~?=))

main :: IO Counts
main = runTestTT $ TestList
    [ largestPrimeFactor 10           ~?= 5
    , largestPrimeFactor 17           ~?= 17
    , largestPrimeFactor 999879846654 ~?= 12818972393
    ]
