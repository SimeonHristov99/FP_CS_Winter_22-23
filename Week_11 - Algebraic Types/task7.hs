main :: IO()
main = do
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.83,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)


