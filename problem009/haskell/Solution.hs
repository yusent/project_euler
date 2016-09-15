module Solution (pithagoreanProduct) where

pithagoreanProduct :: Int -> Int
pithagoreanProduct n
  | n `mod` 2 == 1 = (-1)
  | otherwise = case triplets of
                  []  -> (-1)
                  x:_ -> x
  where triplets = [ a*b*c
                   | c <- [n `div` 3 + 1..n - 3]
                   , b <- [(n - c) `div` 2 + 1..c-1]
                   , let a = n - c - b, a > 0
                   , a ^ 2 + b ^ 2 == c ^ 2
                   ]
