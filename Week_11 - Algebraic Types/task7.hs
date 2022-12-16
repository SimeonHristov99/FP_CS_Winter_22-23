import Data.List

main :: IO()
main = do
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.83,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)
    -- print $ getPairs [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)]

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq, Ord)

roundTwoDig :: (Fractional a, RealFrac a) => a -> a
roundTwoDig = (/ 100) . fromIntegral . round . (* 100)

distance :: (Floating a, RealFrac a) => Point a -> Point a -> a
distance (TwoD x1 x2) (TwoD y1 y2) = roundTwoDig $ sqrt $ (x1 - y1)^2 + (x2 - y2)^2
distance (ThreeD x1 x2 x3) (ThreeD y1 y2 y3) = roundTwoDig $ sqrt $ (x1 - y1)^2 + (x2 - y2)^2 + (x3 - y3)^2
distance _ _ = error "Points must have equal dimensions!"

getClosestDistance :: (Floating a, RealFrac a) => [Point a] -> (a, Point a, Point a)
getClosestDistance = foldl1 (\ p1@(d1, _, _) p2@(d2, _, _) -> if d1 < d2 then p1 else p2)
                        . map (\ [p1, p2] -> (distance p1 p2, p1, p2))
                        . filter (\ xs -> length xs == 2)
                        . subsequences

getPairs ps = [[p1, p2] | p1 <- ps, p2 <- ps, p1 /= p2]
