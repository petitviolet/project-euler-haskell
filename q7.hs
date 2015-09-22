import Prime

answerQ7 :: Integer
answerQ7 = last $ take 10001 sievedPrimes

main = do
    print answerQ7
