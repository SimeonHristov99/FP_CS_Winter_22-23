main :: IO()
main = do
    print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] == [785.3981633974483,157.07963267948966,125.66370614359172,62.83185307179586]

type Cylinder a = (a, a)

getVolumes :: (Floating a) => [Cylinder a] -> [a]
getVolumes = map (\ (r, h) -> pi * r * r * h)
