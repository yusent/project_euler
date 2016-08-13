module Solution (nthPrime) where

nthPrime :: Int -> Int
nthPrime n = primes !! (n-1)

primes :: [Int]
primes = 2 : primes' [3,5..]
  where primes' (x:xs) = (x:) . primes' $ filter (\k -> k `mod` x > 0) xs
