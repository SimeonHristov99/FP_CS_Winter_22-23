main :: IO()
main = do
    contents <- readFile "test.txt"
    print $ map words $ lines $ contents