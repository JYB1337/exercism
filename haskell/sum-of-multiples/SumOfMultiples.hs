--John Youngblood
--2/13/2015
module SumOfMultiples where

sumOfMultiples :: [Int] -> Int -> Int
sumOfMultiples [] _ = 0
sumOfMultiples (x:xs) y | b == 0 = sum [x*z | z <- [0..(a-1)]] + sumOfMultiples xs y
                        | otherwise =  sum [x*z | z <- [0..a]] + sumOfMultiples xs y
                          where (a,b) = divMod y x


sumOfMultiplesDefault :: Int -> Int
sumOfMultiplesDefault p = sumOfMultiples [3,5] p
