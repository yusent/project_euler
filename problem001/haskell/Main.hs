module Main (main) where

import Control.Monad (replicateM_)
import Solution      (sumMultiplesOf3And5)

main :: IO ()
main = readLn >>= flip replicateM_ (readLn >>= print . sumMultiplesOf3And5)
