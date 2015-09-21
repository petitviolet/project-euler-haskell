module Fib (fib) where

fib :: [Int]
fib = 1 : 1 : zipWith (+) fib (tail fib)
