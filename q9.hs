isTriplet :: Int -> Int -> Int -> Bool
isTriplet a b c = sq a + sq b == sq c where
  sq n = n * n

tripletSumTo :: Int -> [[Int]]
tripletSumTo n = [[x, y, z] |
                 x <- [1..n `div` 3],
                 y <- [x..n `div` 2],
                 z <- [y..n `div` 2],
                 isTriplet x y z && x + y + z == n]

answerQ9 :: Int
answerQ9 = product $ tripletSumTo 1000 !! 0

main = do
    print answerQ9
