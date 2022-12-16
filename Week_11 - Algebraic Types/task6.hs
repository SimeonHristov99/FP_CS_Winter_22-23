main :: IO()
main = do
    print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == [ThreeD 4.0 5.0 6.0]

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

roundTwoDig :: (Fractional a, RealFrac a) => a -> a
roundTwoDig = (/ 100) . fromIntegral . round . (* 100)

distance :: (Floating a, RealFrac a) => Point a -> Point a -> a
distance (TwoD x1 x2) (TwoD y1 y2) = roundTwoDig $ sqrt $ (x1 - y1)^2 + (x2 - y2)^2
distance (ThreeD x1 x2 x3) (ThreeD y1 y2 y3) = roundTwoDig $ sqrt $ (x1 - y1)^2 + (x2 - y2)^2 + (x3 - y3)^2
distance _ _ = error "Points must have equal dimensions!"

closestTo :: (Floating a, RealFrac a) => Point a -> [Point a] -> [Point a]
closestTo p ps = [ cP | cP <- ps, distance cP p == minDist]
 where
    minDist = minimum $ map (p `distance`) ps
