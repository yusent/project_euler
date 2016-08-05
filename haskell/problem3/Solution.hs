module Solution (largestPrimeFactor) where

import Data.List  (find)
import Data.Maybe (fromMaybe)

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = fromMaybe n $ maybeLargestPrimeFactor n

maybeLargestPrimeFactor :: Int -> Maybe Int
maybeLargestPrimeFactor n = do
    divisor <- (n `div`) <$> find (`divides` n) [2..root]
    return . fromMaybe divisor $ maybeLargestPrimeFactor divisor
  where
    root = truncate . sqrt $ fromIntegral n
    x `divides` y = y `mod` x == 0
