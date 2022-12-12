main :: IO()
main = do
    print $ sumVectors (1, 2, 3) (4, 5, 6) == (5, 7, 9)
    print $ sumVectors (0, 0, 0) (100, 200, -300) == (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5 == (5, 10, 15)
    print $ scaleVector (5, 2, 159) (-2) == (-10, -4, -318)
    print $ scaleVector (5, 2, 159) (-2.99) -- == (-10, -4, -318)

    print $ dotProduct (1, 2, 3) (7, 4, 1) == 18
    print $ dotProduct (5, 2, 159) (0, -1, -2) == -320

type Vector a = (a, a, a)

dotProduct :: (Num a) => Vector a -> Vector a -> a
dotProduct (x1, x2, x3) (y1, y2, y3) = x1 * y1 + x2 * y2 + x3 * y3

scaleVector :: (Num a) => Vector a -> a -> Vector a
scaleVector (x, y, z) s = (x * s, y * s, z * s)

sumVectors :: (Num a) => Vector a -> Vector a -> Vector a
sumVectors (x1, x2, x3) (y1, y2, y3) = (x1 + y1, x2 + y2, x3 + y3)
    