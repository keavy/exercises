module Accumulate (accumulate) where
a - b != b - a
a - (b - c) != (a - b) - c

a - (b - c)

a -> b -> c = a -> (b -> c) != (a -> b) -> c

(+) :: (Int, Int) -> Int
(+) :: Int -> Int -> Int
accumulate :: (a -> b) -> [a] -> [b]
-- accumulate f [] = []
-- accumulate f (x:xs) = f x : accumulate f xs
-- accumulate f list = if null list
--   then []
--   else f (head list) : accumulate f (tail list)
accumulate f list = case list of
  [] -> []
  (x : xs) -> f x : accumulate f xs

{-

def accumulate(xs, &f)
  …
end

accumulate([…]) { |x| … }

def accumulate(f, xs)
  if xs.empty?
    []
  else
    [ f.call(xs.first), *accumulate(f, xs[1, xs.size - 1]) ]
  end
end

-}
