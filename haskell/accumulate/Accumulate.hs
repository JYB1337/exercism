--John Youngblood
--2/9/2015

module Accumulate where
accumulate :: (a -> b) -> [a] -> [b]
accumulate f as = [f a | a <- as]

{-RECURSION VERSION
accumulate _ [] = []
accumulate f (a:as) = (f a) : accumulate f as
-}
