module Solution (sumEvenFibos) where

sumEvenFibos :: Int -> Int
sumEvenFibos n = sum . filter even $ takeWhile (<n) fibos

fibos :: [Int]
fibos = 1 : 2 : zipWith (+) fibos (tail fibos)
