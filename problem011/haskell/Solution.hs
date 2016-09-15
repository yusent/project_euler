module Solution (maxGridProduct) where

import Data.List (transpose)

maxGridProduct :: [[Int]] -> Int
maxGridProduct t = maximum $ map ($ t)
    [ maxHorizontalProduct
    , maxVerticalProduct
    , maxDiagNegProduct
    , maxDiagPosProduct
    ]

maxHorizontalProduct :: [[Int]] -> Int
maxHorizontalProduct [] = 0
maxHorizontalProduct (r:rs) = max (maxProduct r) $ maxHorizontalProduct rs
  where
    maxProduct (r0:xs@(r1:r2:r3:_)) = max (r0*r1*r2*r3) $ maxProduct xs
    maxProduct _ = 0

maxVerticalProduct :: [[Int]] -> Int
maxVerticalProduct = maxHorizontalProduct . transpose

maxDiagNegProduct :: [[Int]] -> Int
maxDiagNegProduct (r0:xs@(r1:r2:r3:_)) =
    max (maxProduct r0 r1 r2 r3) $ maxDiagNegProduct xs
  where
    maxProduct (a0:as) (_:bs@(b1:_)) (_:cs@(_:c2:_)) (_:ds@(_:_:d3:_)) =
      max (a0 * b1 * c2 * d3) $ maxProduct as bs cs ds
    maxProduct _ _ _ _ = 0
maxDiagNegProduct _ = 0

maxDiagPosProduct :: [[Int]] -> Int
maxDiagPosProduct = maxDiagNegProduct . reverse
