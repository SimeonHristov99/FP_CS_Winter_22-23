main :: IO()
main = do
    print $ f2 (f1 6) 7

f1 x = f1 x

f2 x y = y
