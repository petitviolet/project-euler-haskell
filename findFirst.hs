module FindFirst where

findFirst :: (a -> Bool) -> [a] -> Maybe a
findFirst p [] = Nothing
findFirst p (x:xs)
  | p x = Just x
  | otherwise = findFirst p xs

