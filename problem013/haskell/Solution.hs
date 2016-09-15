module Solution (first10DigitsOfSum) where

first10DigitsOfSum :: [Integer] -> String
first10DigitsOfSum = take 10 . show . sum
