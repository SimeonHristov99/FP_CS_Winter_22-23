main :: IO()
main = do
    print $ mapTree t 2 == [18,6,27]
    print $ mapTree t 1 == [8,1,9]

data BTree = Nil | Node (Int -> Int) BTree BTree

t = Node (+1) (Node (^2) (Node (*2) Nil Nil) (Node (subtract 3) Nil Nil)) (Node (3^) Nil Nil)

mapTree :: BTree -> Int -> [Int]
mapTree Nil _ = []
mapTree (Node f Nil Nil) n = [f n]
mapTree (Node f left right) n = mapTree left (f n) ++ mapTree right (f n)
