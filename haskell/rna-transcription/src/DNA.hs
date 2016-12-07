module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA text = case text of
  [] -> Just ""
  x:xs -> case (mapChar x, toRNA xs) of
    (Just c, Just rest) -> Just (c:rest)
    _ -> Nothing
    where mapChar x = case x of
            'G' -> Just 'C'
            'C' -> Just 'G'
            'T' -> Just 'A'
            'A' -> Just 'U'
            _ -> Nothing

mapChar :: Char -> Maybe Char
mapChar x = case x of
            'G' -> Just 'C'
            'C' -> Just 'G'
            'T' -> Just 'A'
            'A' -> Just 'U'
            _ -> Nothing
