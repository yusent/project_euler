import Control.Monad (replicateM_)
import Solution      (subSetProducts)

main :: IO ()
main = readLn >>= flip replicateM_ processData
  where
    processData = do
      n:k:_ <- map read . words <$> getLine
      map (read . (.[])) getLine >>= print . maximum . subSetProducts k (n-k+1)
