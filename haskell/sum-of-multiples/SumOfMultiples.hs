--John Youngblood
--2/13/2015
module SumOfMultiples where
import Data.List(nub)

getMultiples :: [Int] -> Int -> [Int]
getMultiples [] _ = []
getMultiples (x:xs) y | b == 0 = [x*z | z <- [0..(a-1)]] ++ getMultiples xs y
                      | otherwise = [x*z | z <- [0..(a)]] ++ getMultiples xs y
                        where (a,b) = divMod y x

sumOfMultiples :: [Int] -> Int -> Int
sumOfMultiples x y = sum (nub (getMultiples x y))

sumOfMultiplesDefault :: Int -> Int
sumOfMultiplesDefault d = sumOfMultiples [3,5] d
