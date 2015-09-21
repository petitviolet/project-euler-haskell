import Fib

answerQ2 :: Int
answerQ2 = sum $ takeWhile (< 4000000) evenFib where
  evenFib = filter (\x -> x `mod` 2 == 0) fib
