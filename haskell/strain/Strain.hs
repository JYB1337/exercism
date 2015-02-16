--John Youngblood
--2/16/2015
module Strain (keep, discard) where

keep :: (a -> Bool) -> [a] -> [a]
keep k xs = [ x | x <- xs, k x ]

discard :: (a -> Bool) -> [a] -> [a]
discard d xs = [ x | x <- xs, not (d x) ]
