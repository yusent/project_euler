{-|
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of a given number N?

  Input Format:
  First line contains T, the number of test cases. This is followed by T lines
  each containing an integer N.

  Output Format:
  For each test case, display the largest prime factor of N.

  Sample Input:
  2
  10
  17

  Sample Output:
  5
  17
-}

import Control.Monad (replicateM_)
import Solution      (largestPrimeFactor)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . largestPrimeFactor)
