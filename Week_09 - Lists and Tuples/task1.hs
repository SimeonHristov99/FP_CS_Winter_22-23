import Data.List
import Data.Char

main :: IO()
main = do
    -- print $ (map digitToInt $ show 15) == [1, 5]
    print $ revOneLine 123 == 321
    print $ revOneLineMagic 123 == 321

    print $ sumDivsOneLineLC 6 == 12
    print $ sumDivsOneLineHOF 6 == 12

    print $ primeOneLineLC 6 == False
    print $ primeOneLineLC 17 == True

    print $ primeOneLineHOF 6 == False
    print $ primeOneLineHOF 17 == True

primeOneLineHOF :: Int -> Bool
primeOneLineHOF n = n > 1 && (null $ filter (\ x -> mod n x == 0) [2 .. n - 1])

primeOneLineLC :: Int -> Bool
primeOneLineLC n = n > 1 && null [ x | x <- [2 .. n - 1], mod n x == 0 ]

sumDivsOneLineHOF :: Int -> Int
-- sumDivsOneLineHOF n = sum $ filter (\ x -> mod n x == 0) [1 .. n]
sumDivsOneLineHOF n = sum $ filter ((== 0) . (n `mod`)) [1 .. n]

sumDivsOneLineLC :: Int -> Int
sumDivsOneLineLC n = sum [ x | x <- [1 .. n], mod n x == 0 ]

revOneLineMagic :: Int -> Int
revOneLineMagic = read . reverse . show

revOneLine :: Int -> Int
revOneLine n = read $ reverse $ show n

