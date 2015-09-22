import Prime

sumPrimes :: Int -> Int
sumPrimes n = foldr add 0 $ takeWhile (<n) sievedPrimes where
  add x y = x + y

answerQ10 :: Int
answerQ10 = sumPrimes 2000000

main = do
    print answerQ10
