{-|
  Find the greatest product of K consecutive digits in the N digit number.

  Input Format:
  First line contains T that denotes the number of test cases.
  First line of each test case will contain two integers N & K.
  Second line of each test case will contain a N digit integer.

  Output Format:
  Print the required answer for each test case.

  Sample Input:
  2
  10 5
  3675356291
  10 5
  2709360626

  Sample Output:
  3150
  0
-}

import Control.Monad (replicateM_)
import Solution      (subSetProducts)

main :: IO ()
main = readLn >>= flip replicateM_ processData
  where
    processData = do
      n:k:_ <- map read . words <$> getLine
      map (read . (.[])) getLine >>= print . maximum . subSetProducts k (n-k+1)
