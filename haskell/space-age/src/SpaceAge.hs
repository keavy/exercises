module SpaceAge (Planet(..), ageOn) where

data Planet = Earth | Mercury | Venus | Mars | Jupiter | Saturn | Uranus | Neptune

earthYearSeconds :: Float
earthYearSeconds = 31557600

orbitEarthRatio :: Planet -> Float
orbitEarthRatio planet = case planet of
  Earth -> 1
  Mercury -> 0.2408467
  Venus -> 0.61519726
  Mars -> 1.8808158
  Jupiter -> 11.862615
  Saturn -> 29.447498
  Uranus -> 84.016846
  Neptune -> 164.79132

lengthOfYearInEarthSeconds :: Planet -> Float
lengthOfYearInEarthSeconds planet = earthYearSeconds * (orbitEarthRatio planet)

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / lengthOfYearInEarthSeconds planet
