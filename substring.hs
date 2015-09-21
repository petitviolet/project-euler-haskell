module SubString (subString) where

subString :: [a] -> Int -> Int -> [a]
subString [] _ _ = []
subString xs start end
  | start > end = []
  | start < 0 || end < 0 = []
subString xs start end = take (end - start) $ drop start xs


