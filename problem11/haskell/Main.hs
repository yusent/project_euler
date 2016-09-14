import Control.Applicative ((<$>))
import Control.Monad       (replicateM)
import Solution            (maxGridProduct)

main :: IO ()
main = replicateM 20 (map read . words <$> getLine) >>= print . maxGridProduct
