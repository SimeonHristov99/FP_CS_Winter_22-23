main :: IO()
main = do
    print $ isTriangular [] == True
    print $ isTriangular [[-1]] == True
    print $ isTriangular [[-1, -2, -3], [0, -5, -6], [0, 0, -9]] == True
    print $ isTriangular [[1, 2, 3], [0, 5, 6], [0, 0, 9]] == True
    print $ isTriangular [[0, 2, 3], [0, 0, 6], [1, 0, 0]] == False
    print $ isTriangular [[1, 2, 3], [1, 5, 6], [0, 0, 9]] == False
    print $ isTriangular [[1, 2, 3, 4], [0, 5, 6, 7], [0, 0, 8, 9], [0, 0, 0, 9]] == True
    print $ isTriangular [[]] == True

isTriangular :: (Num a, Eq a) => [[a]] -> Bool
isTriangular [] = True
isTriangular (xs:xss) = helper 1 xss
 where
    helper :: (Num a, Eq a) => Int -> [[a]] -> Bool
    helper _ [] = True
    helper counter (xs:xss) = (all (== 0) $ take counter xs) && helper (counter + 1) xss 

-- counter=1 xs=[1, 2, 3] xss=[[1, 5, 6], [0, 0, 9]]

-- counter = 2 [[0, 0, 8, 9], [0, 0, 0, 9]]
-- helper counter=3 xss=[[0, 0, 0, 9]]