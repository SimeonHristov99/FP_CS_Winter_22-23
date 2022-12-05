main :: IO()
main = do
    print $ pack [1, 2, 3, 7, 8 ,9] == [[1,2,3],[7,8,9]]
    print $ pack [1, 7, 8 ,9] == [[1],[7,8,9]]
    print $ pack [1, 9] == [[1],[9]]

pack :: [Int] -> [[Int]]
pack [] = []
pack (x:xs) = reverse $ map reverse $ helper [[x]] xs
 where
    helper :: [[Int]] -> [Int] -> [[Int]]
    helper result [] = result
    helper ((y:ys):yss) (z:zs)
     | y + 1 == z = helper ((z:y:ys):yss) zs
     | otherwise = helper ([z]:(y:ys):yss) zs
