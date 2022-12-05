import Data.List
import Data.Char

main :: IO()
main = do
    print $ isAscending 0 == True
    print $ isAscending 10 == False
    print $ isAscending 122 == True
    print $ isAscending 123 == True
    print $ isAscending 12340 == False
    print $ isAscending 12349 == True
    
    print $ isAscending2 12349 == True

isAscending2 :: Int -> Bool
isAscending2 n = and $ zipWith (<=) nXs (tail nXs)
-- isAscending2 n = all (\ (x, y) -> x <= y) $ zip nXs (tail nXs)
 where
    nXs = map digitToInt $ show n

isAscending :: Int -> Bool
isAscending n = nXs == sort nXs
 where
    nXs = map digitToInt $ show n
