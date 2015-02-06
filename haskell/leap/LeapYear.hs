--John Youngblood
--2/02/2015
module LeapYear where
isLeapYear :: Int -> Bool
isLeapYear y
  | mod y 400 == 0 = True
    | mod y 100 == 0 = False
      | mod y 4 == 0 = True
        | otherwise = False
