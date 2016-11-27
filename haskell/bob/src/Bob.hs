module Bob (responseFor) where
import Data.Char
import Data.List (dropWhileEnd)

responseFor :: String -> String
responseFor msg
  | null msg'       = "Fine. Be that way!"
  | isShouting msg' = "Whoa, chill out!"
  | isQuestion msg' = "Sure."
  | otherwise       = "Whatever."
  where
    msg' = dropWhileEnd isSpace msg

isShouting :: String -> Bool
isShouting text = not (any isLower text) && any isAlpha text

isQuestion :: String -> Bool
isQuestion text = not (null text) && last text == '?'
