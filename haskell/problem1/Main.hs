{-|
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we
  get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below N.

  Input Format:
  First line contains T that denotes the number of test cases. This is followed
  by T lines, each containing an integer N.

  Output Format:
  For each test case, print an integer that denotes the sum of all the multiples
  of 3 or 5 below N.

  Sample Input:
  2
  10
  100

  Sample Output:
  23
  2318
-}

module Main (main) where

import Control.Monad (replicateM_)
import Solution      (sumMultiplesOf3And5)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . sumMultiplesOf3And5)
