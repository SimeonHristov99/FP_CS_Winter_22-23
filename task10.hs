main :: IO()
main = do
    print $ checkRootLC [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]
    print $ checkRootHOF [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]

checkRootLC :: [(Int, Int)] -> [Bool]
checkRootLC xs = [x * x == y | (x, y) <- xs]

checkRootHOF :: [(Int, Int)] -> [Bool]
checkRootHOF xs = map (\ (x, y) -> x * x == y) xs
