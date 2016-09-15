module Solution where

sumSquareDiff :: Int -> Int
sumSquareDiff n = abs $ sumSquared - sumOfSquares
  where
    sumSquared = (n * (n+1) `div` 2) ^ 2
    sumOfSquares = n * (n+1) * (2*n+1) `div` 6
