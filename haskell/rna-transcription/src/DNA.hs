module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA = traverse mapChar
  where
    mapChar 'G' = Just 'C'
    mapChar 'C' = Just 'G'
    mapChar 'T' = Just 'A'
    mapChar 'A' = Just 'U'
    mapChar _   = Nothing
