module LeapYear (
  isLeapYear
)
where

isLeapYear :: Integral a => a -> Bool
isLeapYear year
  | year `mod` 4 == 0 && not (year `mod` 100 == 0 && year `mod` 400 /= 0) = True
  | otherwise = False
