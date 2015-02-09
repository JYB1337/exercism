--John Youngblood
--2/9/2015
module Bob where
  import Data.Text (pack, toUpper, toLower)
  responseFor :: String -> String
  responseFor s
    |words s == [] = "Fine. Be that way!"
    |last s == '?' && (pack s == toLower (pack s)) = "Sure."
    |pack s == toUpper (pack s) = "Whoa, chill out!"
    |otherwise = "Whatever."
