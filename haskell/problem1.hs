{-|
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we
  get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below .

  Input Format

  First line contains that denotes the number of test cases. This is followed by
  lines, each containing an integer, .

  Output Format

  For each test case, print an integer that denotes the sum of all the multiples
  of 3 or 5 below .

  Sample Input

  2
  10
  100

  Sample Output

  23
  2318
-}

import Control.Monad (replicateM_)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . sumMultiplesOf3And5)

sumMultiplesOf3And5 :: Int -> Int
sumMultiplesOf3And5 n = sumMultiplesOf 3 + sumMultiplesOf 5 - sumMultiplesOf 15
  where sumMultiplesOf k = let x = (n-1) `div` k in k * x * (x+1) `div` 2
