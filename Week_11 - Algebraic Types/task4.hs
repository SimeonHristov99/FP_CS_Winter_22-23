main :: IO()
main = do
    print $ TwoD 6 7
    print $ ThreeD 6 7 8.43
    print $ getPointsHOF (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]
    print $ getPointsLC (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)


