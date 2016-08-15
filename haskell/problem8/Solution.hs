module Solution (subSetProducts) where

subSetProducts :: Int -> Int -> [Int] -> [Int]
subSetProducts _ 0 _ = []
subSetProducts k i xs@(_:xs') = product (take k xs) : subSetProducts k (i-1) xs'
