--John Youngblood
--2/9/2015
module Grains where
square :: Int -> Integer
square x = 2 ^ (x-1)

--finite geometric series
total :: Integer
total = 2 ^ (64 :: Int) - 1
