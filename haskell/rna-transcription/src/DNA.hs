module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA text = case text of
  [] -> Nothing
  _ -> Nothing
  
  -- (x : xs) -> lookup mapping x : toRNA xs
  -- where mapping = [('G', 'C'), ('C', 'G'), ('T', 'A'), ('A', 'U')]

convertLetter :: (Eq k) => k -> [(k,v)] -> Maybe v
convertLetter key [] = Nothing
convertLetter key ((k,v):xs) = if key == k
                                  then Just v
                                  else convertLetter key xs

  {-
  accumulate :: (a -> b) -> [a] -> [b]
  accumulate f list = case list of
    [] -> []
    (x : xs) -> f x : accumulate f xs
  -}
