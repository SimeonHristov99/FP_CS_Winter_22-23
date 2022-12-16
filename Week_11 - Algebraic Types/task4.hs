main :: IO()
main = do
    print $ TwoD 6 7
    print $ ThreeD 6 7 8.43
    print $ getPointsHOF (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]
    print $ getPointsLC (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

getPointsHOF :: (Eq a) => (a -> a) -> (a -> a) -> [Point a] -> [Point a]
getPointsHOF f g = filter (\ (TwoD x y) -> f x == g y)

getPointsLC :: (Eq a) => (a -> a) -> (a -> a) -> [Point a] -> [Point a]
getPointsLC f g ps = [ p | p@(TwoD x y) <- ps, f x == g y ]
