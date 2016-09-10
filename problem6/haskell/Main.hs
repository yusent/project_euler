import Control.Monad (replicateM_)
import Solution      (sumSquareDiff)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . sumSquareDiff)
