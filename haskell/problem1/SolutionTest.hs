import Solution   (sumMultiplesOf3And5)
import Test.HUnit

main :: IO Counts
main = runTestTT . TestList $ map TestCase
    [ assertEqual "Should get correct result" 2318
      $ sumMultiplesOf3And5 100
    , assertEqual "Should get correct result" 233333333166666668
      $ sumMultiplesOf3And5 1000000000
    ]
