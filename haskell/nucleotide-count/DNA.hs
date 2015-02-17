--John Youngblood
--2/16/2015
module DNA where
import Data.List (delete)
import Data.Map (Map, fromList)
count :: Char -> String -> Int
count _ "" = 0
count n (d:dna) | n `notElem` "GACT" = error ("invalid nucleotide '" ++ show n ++ "'")
                | d `notElem` "GACT" = error ("invalid nucleotide '" ++ show d ++ "'")
                | n `elem` (d:dna) = 1 + count n (delete n (d:dna))
                | otherwise = 0

nucleotideCounts :: String -> Map Char Integer
nucleotideCounts dna = fromList [(x, toInteger (count x dna)) | x <- "ATGC"]

