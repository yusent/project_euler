module Solution where

smallestMultiple :: Int -> Int
smallestMultiple n = product . foldl1 union' $ map primeFactors [1..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = divisor : primeFactors (n `div` divisor)
  where divisor = head $ dropWhile (\x -> n `mod` x > 0) primes

primes :: [Int]
primes = 2 : primes' [3,5..]
  where primes' (x:xs) = (x:) . primes' $ filter (\k -> k `mod` x > 0) xs

union' :: [Int] -> [Int] -> [Int]
union' xs [] = xs
union' [] ys = ys
union' xxs@(x:xs) yys@(y:ys)
  | x > y     = y : union' xxs ys
  | x < y     = x : union' xs yys
  | otherwise = x : union' xs ys
