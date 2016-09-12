module Solution (findNumber) where

import Data.List (find, group)

findNumber :: Int -> Int
findNumber 1 = 3
findNumber n = head $ filter ((>n) . divisorsCount) triangleNumbers
  where
    divisorsCount n = product . map ((+1) . length) . group $ primeFactors n 
    triangleNumbers = scanl1 (+) [1..]

primeFactors :: Int -> [Int]
primeFactors n = case pf of
    Nothing -> [n]
    Just p  -> p : primeFactors (n `div` p)
  where
    pf = find ((==0) . (n `mod`)) $ takeWhile (<=limit) primes
    limit = floor . sqrt $ fromIntegral n

primes :: [Int]
primes = 2 : primes' [3,5..]
  where primes' (x:xs) = (x:) . primes' $ filter (\k -> k `mod` x > 0) xs
