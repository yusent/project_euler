module Solution (sumMultiplesOf3And5) where

sumMultiplesOf3And5 :: Int -> Int
sumMultiplesOf3And5 n = sumMultiplesOf 3 + sumMultiplesOf 5 - sumMultiplesOf 15
  where sumMultiplesOf k = let x = (n-1) `div` k in k * x * (x+1) `div` 2
