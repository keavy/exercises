module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA text = traverse mapChar text

mapChar :: Char -> Maybe Char
mapChar x = case x of
            'G' -> Just 'C'
            'C' -> Just 'G'
            'T' -> Just 'A'
            'A' -> Just 'U'
            _ -> Nothing
