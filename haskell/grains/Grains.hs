--John Youngblood
--2/9/2015
module Grains where

square :: Int -> Integer
square x = 2 ^ (x-1)

total :: Integer
total = sum (map square [1..64])
