module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA text = foldr combine (Just "") text
  where combine :: Char -> Maybe String -> Maybe String
        combine element rest = case (mapChar element, rest) of
          (Just c, Just cs) -> Just (c:cs)
          _ -> Nothing

        foldr :: (Char -> Maybe String -> Maybe String) -> Maybe String -> [Char] -> Maybe String
        foldr f seed list = case list of
          [] -> seed
          (head:tail) -> f head (foldr f seed tail)

mapChar :: Char -> Maybe Char
mapChar x = case x of
            'G' -> Just 'C'
            'C' -> Just 'G'
            'T' -> Just 'A'
            'A' -> Just 'U'
            _ -> Nothing
