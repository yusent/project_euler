import Solution   (sumEvenFibos)
import Test.HUnit

main :: IO Counts
main = runTestTT . TestList $ map TestCase
    [ assertEqual "Should get correct result" 10 $ sumEvenFibos 10
    , assertEqual "Should get correct result" 44 $ sumEvenFibos 100
    ]
