--John Youngblood
--02/17/2015
module Phone where
import Data.Char (isDigit)

areaCode :: String -> String
areaCode n = take 3 (number n)

number :: String -> String
number n = validate (filter isDigit n)
           where validate s | length s == 11 && head s == '1' = tail s
                            | length s == 10 = s
                            | otherwise = "0000000000"

prettyPrint :: String -> String
prettyPrint n = "(" ++ take 3 x ++ ") " ++ drop 3 x ++ "-" ++ y
                where (x,y) = splitAt 6 (number n)
