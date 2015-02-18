--John Youngblood
--2/18/2015
module School where
import Data.List (sort, nub)
type School = [(Int, String)]
--type School = [Student]
--data Student = {grade :: Int, name :: String}
empty :: School
empty = []

add :: Int -> String -> School -> School
add g n m = (g, n) : m

grade :: Int -> School -> [String]
grade g s = sort [ b | (a,b) <- s , a == g]

sorted :: School -> [(Int, [String])]
sorted s = [ (a, grade a s) | a <- g]
          where g = sort (nub [ fst x | x <- s])
