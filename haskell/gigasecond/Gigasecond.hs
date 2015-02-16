--John Youngblood
--2/9/2015
module Gigasecond where
import Data.Time.Clock

gigas :: NominalDiffTime
gigas = 1e9

fromDay :: UTCTime -> UTCTime
fromDay = addUTCTime gigas
