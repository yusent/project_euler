import Control.Monad (replicateM_)
import Solution      (sumEvenFibos)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . sumEvenFibos)
