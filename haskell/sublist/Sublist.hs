--John Youngblood
--2/9/2015

module Sublist where
  import Data.List (isInfixOf, length)

  data Sublist = Sublist | Superlist | Equal | Unequal deriving Show

  instance Eq Sublist where
    (==) x y = (show x) == (show y)

  sublist :: Eq a => [a] -> [a] -> Sublist
  sublist x y
     | (isInfixOf x y) && (length x == length y) = Equal
     | isInfixOf x y = Sublist
     | isInfixOf y x = Superlist
     | otherwise = Unequal
