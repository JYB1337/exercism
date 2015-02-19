--John Youngblood
--2/16/2015
module Strain (keep, discard) where
--Recursive Version
keep :: (a -> Bool) -> [a] -> [a]
keep _ [] = []
keep p (x:xs) | p x = x:keep p xs
              | otherwise = keep p xs
--Defined using keep
discard :: (a -> Bool) -> [a] -> [a]
discard p = keep (not . p)
