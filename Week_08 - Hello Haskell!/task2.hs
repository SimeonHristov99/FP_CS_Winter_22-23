main :: IO()
main = do
    print $ isInsideNoLists 5 1 4 == True
    print $ isInsideNoLists 10 50 20 == True
    print $ isInsideNoLists 10 50 1 == False

    print $ isInsideLists 5 1 4 == True
    print $ isInsideLists 10 50 20 == True
    print $ isInsideLists 10 50 1 == False

    print $ (isInsideLambda 5 1) 4 == True
    print $ (isInsideLambda 10 50) 20 == True
    print $ (isInsideLambda 10 50) 1 == False

isInsideLambda :: Int -> Int -> Int -> Bool
isInsideLambda a b = (\ x -> elem x [min a b .. max a b])

isInsideLists :: Int -> Int -> Int -> Bool
isInsideLists a b x = elem x [min a b .. max a b]

isInsideNoLists :: Int -> Int -> Int -> Bool
isInsideNoLists a b x = min a b <= x && x <= max a b
