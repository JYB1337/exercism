--John Youngblood
--2/9/2015

module Sublist where
import Data.List (isInfixOf)

data Sublist = Sublist | Superlist | Equal | Unequal deriving (Show, Eq, Ord)

sublist :: Eq a => [a] -> [a] -> Sublist
sublist x y
  | x == y = Equal
  | isInfixOf x y = Sublist
  | isInfixOf y x = Superlist
  | otherwise = Unequal
