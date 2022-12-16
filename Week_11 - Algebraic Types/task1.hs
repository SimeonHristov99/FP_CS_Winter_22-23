main :: IO()
main = do
    print $ Circle 5
    print $ Circle 5 == Circle 4
    print $ Circle 5 < Circle 6
    print $ Circle 5 < Rectangle 5 5
    print $ Circle "Show"

data Shape a = Circle a
                | Rectangle a a
                | Triangle a a a
                | Cylinder a a
 deriving (Show, Eq, Ord)