--John Youngblood
--2/9/2015
module Bob where
import Data.Char (isLower, isLetter, isSpace)

responseFor :: String -> String
responseFor s | all isSpace s = "Fine. Be that way!"
              | not (any isLower s) && any isLetter s = "Whoa, chill out!"
              | last s == '?' = "Sure."
              | otherwise = "Whatever."
