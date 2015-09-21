import FindFirst

canBeDevided :: Int -> Int -> Bool
canBeDevided n x
  | n <= 0 = False
  | x <= 0 = False
  | otherwise = all (== 0) $ map (n `mod`) [1..x]

canBeDevidedTo20 n = canBeDevided n 20

answerQ5 :: Maybe Int
answerQ5 = findFirst canBeDevidedTo20 [380,760..]
