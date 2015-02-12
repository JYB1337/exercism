--John Youngblood
--2/9/2015
module Bob where
import Data.Char (isLower, isLetter)

noLower :: String -> Bool
noLower "" = True
noLower (c:s) |isLower c && isLetter c = False
              |otherwise = noLower s

responseFor :: String -> String
responseFor s |words s == [] = "Fine. Be that way!"
              |noLower s && any isLetter s = "Whoa, chill out!"
              |last s == '?' = "Sure."
              |otherwise = "Whatever."
