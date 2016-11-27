module SpaceAge (Planet(..), ageOn) where

data Planet = Earth | Mercury | Venus | Mars | Jupiter | Saturn | Uranus | Neptune

-- data AnyPlanet = AnyPlanet { name :: String, lengthOfYearInSeconds :: Float }
-- data AnyPlanet = AnyPlanet String Float
-- name :: AnyPlanet -> String
-- lengthOfYearInSeconds :: AnyPlanet -> Float

-- earth :: AnyPlanet
-- earth = AnyPlanet "Earth" 31557600

-- lengthOfYearInSecondsOnEarth :: Float
-- lengthOfYearInSecondsOnEarth = lengthOfYearInSeconds earth

-- ageOn' (AnyPlanet{..}) secs = secs / lengthOfYearInSeconds

ageOn :: Planet -> Float -> Float
-- ageOn Earth secs = secs / 31557600
-- ageOn Earth secs = secs / lengthOfYearInSeconds earth
-- ageOn Mercury secs = (ageOn Earth secs) / 0.2408467
ageOn planet seconds = seconds / lengthOfYearInSeconds planet
ageOn planet seconds = undefined

earthYearSeconds :: Float
earthYearSeconds = 31557600

lengthOfYearInSeconds :: Planet -> Float
lengthOfYearInSeconds Earth = earthYearSeconds
lengthOfYearInSeconds Mercury = earthYearSeconds * 0.2408467
{-

description = "Mercury"
      , planet      = Mercury
      , seconds     = 2134835688
      , expected    = 280.88

              - Earth: orbital period 365.25 Earth days, or 31557600 seconds
              - Mercury: orbital period 0.2408467 Earth years
              - Venus: orbital period 0.61519726 Earth years
              - Mars: orbital period 1.8808158 Earth years
              - Jupiter: orbital period 11.862615 Earth years
              - Saturn: orbital period 29.447498 Earth years
              - Uranus: orbital period 84.016846 Earth years
              - Neptune: orbital period 164.79132 Earth years

-}
