import Data.List

main :: IO()
main = do
    print $ isBinarySearchTree t3 == True
    print $ isBinarySearchTree t4 == False
    print $ isBinarySearchTree t5 == False
    print $ isBinarySearchTree t6 == False

data BTree = Nil | Node Int BTree BTree
 deriving (Show, Eq)

traverseDFS :: BTree -> [Int]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ (value : traverseDFS right)

isBinarySearchTree :: BTree -> Bool
isBinarySearchTree t = nodes == sort nodes
 where
    nodes = traverseDFS t


t3 :: BTree
t3 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 6 (Node 4 Nil Nil) (Node 7 Nil Nil))) (Node 10 Nil (Node 14 (Node 13 Nil Nil) Nil))

t4 :: BTree
t4 = Node 8 (Node 3 (Node 5 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 14 Nil Nil))

t5 :: BTree
t5 = Node 8 (Node 3 (Node 2 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 1 Nil Nil))

t6 :: BTree
t6 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 4 Nil Nil)) (Node 10 (Node 5 Nil Nil) Nil)
