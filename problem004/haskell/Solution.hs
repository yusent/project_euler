module Solution (largestPalindromeProduct) where

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct = maximum . palindromesBelow

palindromesBelow :: Int -> [Int]
palindromesBelow n = [ x*y | x <- [999,998..100], y <- [999,998..x], f (x*y) ]
  where f x = x<n && isPalindrome x

isPalindrome :: Int -> Bool
isPalindrome n = s == reverse s
  where s = show n
