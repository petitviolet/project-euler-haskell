multiple :: Int -> Int
multiple n = sum $ filter isThreeOrFive [1..n-1] where
  isThreeOrFive = \x -> x `mod` 3 == 0 || x `mod` 5 == 0

answerQ1 :: Int
answerQ1 = multiple 1000

main = do
    print answerQ1
