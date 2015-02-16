--John Youngblood
--2/16/2015
module Anagram where
import Data.Char (toUpper, toLower)
import Data.List (delete)

anagramsFor :: String -> [String] -> [String]
anagramsFor _ [] = []
anagramsFor w (x:xs) | map toLower w == map toLower x = anagramsFor w xs
                     | isAnagram w x = (x:anagramsFor w xs)
                     | otherwise = anagramsFor w xs
                       where isAnagram :: String -> String -> Bool
                             isAnagram "" "" = True
                             isAnagram _ "" = False
                             isAnagram "" _ = False
                             isAnagram (a:as) b | elem (toLower a) b = isAnagram as (delete (toLower a) b)
                                                | elem (toUpper a) b = isAnagram as (delete (toUpper a) b)
                                                | otherwise = False
