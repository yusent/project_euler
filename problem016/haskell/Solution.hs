module Solution (powerDigitSum) where

powerDigitSum :: Int -> Int
powerDigitSum = sum . map (read . (:[])) . show . (2^)
