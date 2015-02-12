--John Youngblood
--2/9/2015
module DNA where
toRNA :: String -> String
toRNA [] = []
toRNA (x:xs) = case x of 'G' -> 'C' : toRNA xs
                         'C' -> 'G' : toRNA xs
                         'A' -> 'U' : toRNA xs
                         'T' -> 'A' : toRNA xs
                         _   -> error "not an appropriate DNA strand"
