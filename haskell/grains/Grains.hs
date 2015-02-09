--John Youngblood
--2/9/2015
module Grains where

  square :: Int -> Integer
  square 1 = 1
  square x = 2 * (square (x-1))

  total = sum [square x | x <- [1..64]]
