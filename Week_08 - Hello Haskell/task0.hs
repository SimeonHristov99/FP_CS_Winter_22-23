main :: IO()
main = do
    print ((\ x -> x + 5) 10 == 15)
    print $ (\ x -> x + 5) 10 == 15
    print $ "Hello world"
