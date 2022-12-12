main :: IO()
main = do
    print $ getSquares 0 100 10 == [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

getSquares :: Int -> Int -> Int -> [(Int, Int)]
getSquares x y k = map (\ z -> (z, z * z)) [x, x + k .. y]

getSquaresLC :: Int -> Int -> Int -> [(Int, Int)]
getSquaresLC x y k = [(z, z * z) | z <- [x, x + k .. y]]
