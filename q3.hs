primeFactors :: Integer -> [Integer]
primeFactors n = [x | x <- [2..n], n `mod` x == 0]

extPrimeFactor :: Integer -> [Integer]
extPrimeFactor 1 = []
extPrimeFactor n = pf : extPrimeFactor (n `div` pf) where
  pf = primeFactors n !! 0

answerQ3 :: Integer
answerQ3 = maximum $ extPrimeFactor 600851475143
