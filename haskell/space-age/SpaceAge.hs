--John Youngblood
--2/16/2015
module SpaceAge where
data Planet = Earth | Mercury | Venus | Mars | Jupiter | Saturn | Uranus | Neptune deriving (Show, Eq, Ord)
{-
   - Earth: orbital period 365.25 Earth days, or 31557600 seconds
   - Mercury: orbital period 0.2408467 Earth years
   - Venus: orbital period 0.61519726 Earth years
   - Mars: orbital period 1.8808158 Earth years
   - Jupiter: orbital period 11.862615 Earth years
   - Saturn: orbital period 29.447498 Earth years
   - Uranus: orbital period 84.016846 Earth years
   - Neptune: orbital period 164.79132 Earth years
-}
ageOn :: Planet -> Float -> Float
ageOn p s = case p of Earth -> s/e
                      Mercury -> s/(e*0.2408467)
                      Venus -> s/(e*0.61519726)
                      Mars -> s/(e*1.8808158)
                      Jupiter -> s/(e*11.862615)
                      Saturn -> s/(e*29.447498)
                      Uranus -> s/(e*84.016846)
                      Neptune -> s/(e*164.79132)
                      where e = 31557600
