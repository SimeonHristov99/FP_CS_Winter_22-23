main :: IO()
main = do
    print $ addOneXsPA [1, 2, 3, 4, 5] == [2, 3, 4, 5, 6]
    print $ addOneNPA 5 == 6
    print $ sqPlusOne 5 == 26

sqPlusOne :: (Num a) => a -> a
sqPlusOne = (+1) . (^2)

addOneNPA :: (Num a) => a -> a
addOneNPA = (+1)

addOneXsPA :: (Num a) => [a] -> [a]
addOneXsPA xs = map (+1) xs
