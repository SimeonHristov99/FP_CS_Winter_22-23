main :: IO()
main = do
    print $ normalize (4, 2) == (2, 1)
    print $ normalize (8, 4) == (2, 1)
    print $ normalize (2, 4) == (1, 2)

type Rat = (Int, Int)

normalize :: Rat -> Rat
normalize (x, y) = (div x hcd, div y hcd)
 where
    hcd = gcd x y

normalizeLet :: Rat -> Rat
normalizeLet (x, y) = let hcd = gcd x y in (div x hcd, div y hcd)
    