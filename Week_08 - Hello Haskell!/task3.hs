main :: IO()
main = do
    print $ factRec 11 == 39916800
    -- print $ factRec (-11) -- error: x was negative
    print $ factIter 11 == 39916800
    -- --print $ factIter (-11) -- error: x was negative
    print $ factXs 11 -- == 39916800
    -- print $ factXs 0 == 1

factXs :: Int -> Int
factXs n = product [1 .. n]

factRec :: Int -> Int
factRec 0 = 1
factRec n
 | n < 0 = error "n was negative"
 | otherwise = n * factRec (n - 1)

factIter :: Int -> Int
factIter n
 | n < 0 = error "n was negative"
 | otherwise = helper n 1
 where
    helper :: Int -> Int -> Int
    helper 0 res = res
    helper n res = helper (n - 1) (res * n)
