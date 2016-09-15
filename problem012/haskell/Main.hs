import Control.Monad (replicateM_)
import Solution      (findNumber)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . findNumber)
