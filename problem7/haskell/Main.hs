{-|
  By listing the first six prime numbers: 2, 3, 5, 7, 11 and 13, we can see that
  the 6th prime is 13. What is the Nth prime number?

  Input Format:
  First line contains T that denotes the number of test cases. This is followed
  by T lines, each containing an integer, N.

  Output Format:
  Print the required answer for each test case.

  Sample Input:
  2
  3
  6

  Sample Output:
  5
  13
-}

import Control.Monad (replicateM_)
import Solution      (nthPrime)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . nthPrime)
