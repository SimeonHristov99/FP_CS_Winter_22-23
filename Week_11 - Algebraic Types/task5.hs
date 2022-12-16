main :: IO()
main = do
    print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03
    print $ distance (ThreeD 2 5 10) (TwoD 6 9) == 16.03

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)

roundTwoDig :: (Fractional a, RealFrac a) => a -> a
roundTwoDig = (/ 100) . fromIntegral . round . (* 100)

distance :: (Floating a, RealFrac a) => Point a -> Point a -> a
distance (TwoD x1 x2) (TwoD y1 y2) = roundTwoDig $ sqrt $ (x1 - y1)^2 + (x2 - y2)^2
distance (ThreeD x1 x2 x3) (ThreeD y1 y2 y3) = roundTwoDig $ sqrt $ (x1 - y1)^2 + (x2 - y2)^2 + (x3 - y3)^2
distance _ _ = error "Points must have equal dimensions!"
