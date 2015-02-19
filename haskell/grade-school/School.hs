--John Youngblood
--2/18/2015
module School (School, empty, add, grade, sorted) where
import Data.List (sort)
import qualified Data.Map as M

type School = (M.Map Int [String])

empty :: School
add :: Int -> String -> School -> School
grade :: Int -> School -> [String]
sorted :: School -> [(Int, [String])]

empty = School.empty

add g n s = M.insertWith (++) g [n] s

grade g s = maybe [] sort gl
            where gl = M.lookup g s

sorted s = M.assocs $ M.map sort s
