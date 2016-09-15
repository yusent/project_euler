import Control.Monad (replicateM_)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . powerDigitSum)
