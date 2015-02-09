--John Youngblood
--2/9/2015
module DNA where
  toRNA :: String -> String
  toRNA [] = []
  toRNA (c:s)
    |c == 'G' = 'C' : toRNA s
    |c == 'C' = 'G' : toRNA s
    |c == 'A' = 'U' : toRNA s
    |c == 'T' = 'A' : toRNA s
