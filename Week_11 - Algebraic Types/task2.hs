main :: IO()
main = do
    print $ perimeter (Circle 5) == 31.41592653589793
    print $ perimeter (Rectangle 2.5 4.5) == 14
    print $ perimeter (Rectangle 5.5 20.6) == 52.2
    print $ perimeter (Triangle 5.3 3.9 4.89) == 14.09
    print $ perimeter (Cylinder 2.5 10) == 30

    print $ area (Circle 5) == 78.53981633974483
    print $ area (Rectangle 2.5 4.5) == 11.25
    print $ area (Rectangle 5.5 20.6) == 113.30000000000001
    print $ area (Triangle 5.3 3.9 4.89) == 9.127927385194024
    print $ area (Cylinder 20 30) == 6283.185307179587  

    print $ isRound (Circle 5) == True
    print $ isRound (Rectangle 2.5 4.5) == False
    print $ isRound (Rectangle 5.5 20.6) == False
    print $ isRound (Triangle 5.3 3.9 4.89) == False
    print $ isRound (Cylinder 20 30) == True

    print $ is2D (Circle 5) == True
    print $ is2D (Rectangle 2.5 4.5) == True
    print $ is2D (Rectangle 5.5 20.6) == True
    print $ is2D (Triangle 5.3 3.9 4.89) == True
    print $ is2D (Cylinder 20 30) == False


data Shape a = Circle a
                | Rectangle a a
                | Triangle a a a
                | Cylinder a a
 deriving (Show, Eq, Ord)

is2D :: Shape a -> Bool
is2D (Cylinder _ _) = False
is2D _ = True

isRound :: Shape a -> Bool
isRound (Circle _) = True
isRound (Cylinder _ _) = True
isRound _ = False

area :: (Floating a) => Shape a -> a
area (Circle r) = pi * r * r
area (Rectangle x y) = x * y
area (Triangle x y z) = sqrt $ halfP * (halfP - x) * (halfP - y) * (halfP - z)
 where
    halfP = (x + y + z) / 2
area (Cylinder r h) = 2 * pi * r * h + 2 * pi * r * r

perimeter :: (Floating a) => Shape a -> a
perimeter (Circle r) = 2 * pi * r
perimeter (Rectangle x y) = 2 * x + 2 * y
perimeter (Triangle x y z) = x + y + z
perimeter (Cylinder r h) = 4 * r + 2 * h
