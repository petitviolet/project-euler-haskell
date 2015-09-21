sq :: Int -> Int
sq n = n * n

sumSq :: Int -> Int
sumSq n = sum $ map sq [1..n]

sqSum :: Int -> Int
sqSum n = sq $ sum [1..n]

answerQ6 :: Int
answerQ6 = sqSum 100 - sumSq 100
