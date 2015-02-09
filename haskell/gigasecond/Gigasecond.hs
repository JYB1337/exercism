--John Youngblood
--2/9/2015
module Gigasecond where
  import Data.Time.Clock

  gigas = (10^9)

  fromDay :: UTCTime -> UTCTime
  fromDay d = addUTCTime gigas d
