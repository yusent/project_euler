import Control.Monad (replicateM_)
import Solution      (largestPalindromeProduct)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . largestPalindromeProduct)
