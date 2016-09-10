import Control.Monad (replicateM_)
import Solution      (largestPrimeFactor)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . largestPrimeFactor)
