main :: IO()
main = do
    print $ fibRec 11 == 89

    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105

fibIter :: Integer -> Integer
fibIter n = helper 0 1 n
 where
    helper :: Integer -> Integer -> Integer -> Integer
    helper n0 _ 0 = n0
    helper _ n1 1 = n1
    helper n0 n1 leftover = helper n1 (n0 + n1) (leftover - 1)

fibRec :: Int -> Int
fibRec 0 = 0
fibRec 1 = 1
fibRec n = fibRec (n - 1) + fibRec (n - 2)
