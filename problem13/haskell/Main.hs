import Control.Monad (replicateM)
import Solution      (first10DigitsOfSum)

main :: IO ()
main = readLn >>= flip replicateM readLn >>= putStrLn . first10DigitsOfSum
