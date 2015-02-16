--John Youngblood
--2/16/2015
module DNA where

hammingDistance :: String -> String -> Int
--even though its assumed that both DNA strands are of equal length, I split the base case up so that -Wall does not throw a Warning
hammingDistance "" _ = 0
hammingDistance _ "" = 0
hammingDistance (a:as) (b:bs) | a == b = hammingDistance as bs
                              | otherwise = 1 + hammingDistance as bs
