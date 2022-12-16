main :: IO()
main = do
    print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [78.54, 11.25, 113.3, 9.13, 6283.19]
    print $ maxAreaFold [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == Cylinder 20.0 30.0

data Shape a = Circle a
                | Rectangle a a
                | Triangle a a a
                | Cylinder a a
 deriving (Show, Eq, Ord)

area :: (Floating a) => Shape a -> a
area (Circle r) = pi * r * r
area (Rectangle x y) = x * y
area (Triangle x y z) = sqrt $ halfP * (halfP - x) * (halfP - y) * (halfP - z)
 where
    halfP = (x + y + z) / 2
area (Cylinder r h) = 2 * pi * r * h + 2 * pi * r * r

roundTwoDig :: (Fractional a, RealFrac a) => a -> a
roundTwoDig = (/ 100) . fromIntegral . round . (* 100)

maxAreaFold :: (Floating a, Fractional a, RealFrac a) => [Shape a] -> Shape a
maxAreaFold = foldr1 (\ s1 s2 -> if area s1 < area s2 then s2 else s1)

maxArea :: (Floating a, Fractional a, RealFrac a) => [Shape a] -> Shape a
maxArea [] = error "Empty List"
maxArea ss = head [ s | (i, s) <- zip [0 ..] ss, roundTwoDig (area s) == maxAreaShape]
 where
    maxAreaShape = maximum $ map (roundTwoDig . area) ss

getAreas :: (Floating a, RealFrac a) => [Shape a] -> [a]
getAreas = map (roundTwoDig . area)
