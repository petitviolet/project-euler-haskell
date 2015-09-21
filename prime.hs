module Prime (isPrime, primes, sievedPrimes) where

isPrime :: Integer -> Bool
isPrime n
  | n <= 1 = False
isPrime n = not $ elem 0 [n `mod` x | x <- [2..floor $ fromIntegral n  ** 0.5]]

primes :: [Integer]
primes = f[2..] where
 f(p : ns) = p : f(filter isPrime ns)
 -- f(p : ns) = p : f(filter ((/=0) . (`mod` p)) ns)

-- http://jutememo.blogspot.jp/2008/10/3-python-haskell.html

data Sieve = Sieve { list :: [Int], tail :: Sieve }
           | Empty deriving Show

sieveByHead :: [Int] -> [Int]
sieveByHead [] = []
sieveByHead (x:xs)
  | abs x == 1 = [x]
  | otherwise = [n | n <- xs, n `mod` x /= 0]

sieve :: Sieve -> Sieve
sieve (Sieve [] _) = Empty
sieve (Sieve xs s) = Sieve xs (sieve $ Sieve (sieveByHead xs) s)

sievingPrimes :: Sieve -> [Int]
sievingPrimes Empty = []
sievingPrimes (Sieve (x:_) s) = x : (sievingPrimes s)

sievedPrimes :: [Int]
sievedPrimes = sievingPrimes $ sieve $ Sieve [2..] Empty
