isPalindromic :: Int -> Bool
isPalindromic n = (show n) == (reverse $ show n)

twoDigits :: [Int]
twoDigits = [product [x, y] |
                x <- [999,998..100],
                y <- [999,998..100]]

answerQ4 :: Int
answerQ4 = maximum $ filter isPalindromic twoDigits
