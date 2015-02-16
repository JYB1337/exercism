--John Youngblood
--2/16/2015
module DNA where
import Data.List (elem, delete)
import Data.Map (fromList)

count :: Char -> String -> Int
count _ "" = 0
count n (d:dna) | not (elem n "GACT") = error "invalid nucleotide"
                | not (elem d "GACT") = error "invalid nucleotide"
                | elem n (d:dna) = 1 + count n (delete n (d:dna))
                | otherwise = 0

nucleotideCounts :: String -> [(Char, Int)]
nucleotideCounts dna = fromList [(x,y) | x <- ['G','A','C','T'], y <- [count x dna]]