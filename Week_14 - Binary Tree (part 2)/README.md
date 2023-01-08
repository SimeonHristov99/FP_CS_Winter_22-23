# Task 1

Define a function that inserts a node in a binary search tree. By using it construct the same tree and check their equality. Define *secondNumberTree* using insert.

*numberTreeBefore*:

![Alt text](assets/task1_1.png?raw=true "task1_1.png")

*secondNumberTree*:

![Alt text](assets/task1_2.png?raw=true "task1_2.png")

Test cases:

    numberTreeBefore = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))

    print $ insert numberTreeBefore 13 == (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

    print $ (numberTreeAfter == numberTreeBefore) == True

    print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))

# Task 2

Define a function that checks whether a word is present in a binary tree made up of characters.

Test cases:

```haskell
print $ containsWord t1 "acd" == True
print $ containsWord t1 "cd" == True
print $ containsWord t1 "af" == False
print $ containsWord t1 "ac" == False
print $ containsWord t1 "acdh" == False
print $ containsWord t1 "b" == False
print $ containsWord t1 "e" == True
print $ containsWord t2 "ab" == True
print $ containsWord t2 "ad" == False
print $ containsWord t3 "bdh" == True
print $ containsWord t3 "bdi" == True
print $ containsWord t3 "ac" == False
```

Trees:

```haskell
t1:      a
        / \
       c   b
      / \   \
     f   d   e

t1 :: BTree
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 
```

# Task 3

Define a function that returns all possible word combinations from a binary tree made up of characters.

Test case:

    print $ genWords t1 == ["acf","acd","abe","cf","cd","f","d","be","e"]
    print $ genWords t2 == ["acd","ab","cd","d","b"]
    print $ genWords t3 == ["abdh","abdi","abe","acf","acg","bdh","bdi","be","dh","di","h","i","e","cf","cg","f","g"]

Trees:

    t1:    a
          / \
         c   b
        / \   \
       f   d   e

    t1 :: BTree
    t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

    t2 :: BTree
    t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

    t3 :: BTree
    t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil))

# Task 4

Define a function that returns all words contained in all of the trees passed as a list.

Test cases:

    print $ allContain [t1, t2] == ["acd","cd","d"]
    print $ allContain [t1, t2, t3] == []
    print $ allContain [t3, t4] == ["g"]

Trees:

    t1:    a
          / \
         c   b
        / \   \
       f   d   e

    t1 :: BTree
    t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

    t2 :: BTree
    t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

    t3 :: BTree
    t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

    t4 :: BTree
    t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)

# For home

# Task 1

Define a new data type representing a binary tree of whole numbers. By using it, firstTree and secondTree define a function that returns the sum of the nodes with values between L and R (inclusive).

firstTree:

![Alt text](assets/fh_task1_1.png?raw=true "fh_task1_1.png")

secondTree:

![Alt text](assets/fh_task1_2.png?raw=true "fh_task1_2.png")

Test cases:

    print $ rangedSum firstTree 100 50 == 0 -- (L = 100, R = 50)
    print $ rangedSum firstTree 7 15 == 32 -- (L = 7, R = 15)
    print $ rangedSum firstTree 15 7 == 32 -- (L = 15, R = 7)
    print $ rangedSum secondTree 6 10 == 23 -- (L = 6, R = 10)
    print $ rangedSum secondTree 10 6 == 23 -- (L = 10, R = 6)

# Task 2

Define a function that modifies a BST so that every node *n* has a new value equal to the sum of the values of the original tree that are greater than or equal to the value of *n*.

![Alt text](assets/fh_task2.png?raw=true "fh_task1_2.png")

Test case:

    print $ convert tree == (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))

# Task 3

Convert a binary tree to a binary indexed tree.

tree:

![Alt text](assets/fh_task3_1.png?raw=true "fh_task3_1.png")

treeResult:

![Alt text](assets/fh_task3_2.png?raw=true "fh_task3_2.png")

Test case:

    print $ toBinaryIndexed tree == Node (10,5) (Node (5,2) (Node (3,1) (Node (1,0) Nil Nil) Nil) (Node (7,4) (Node (6,3) Nil Nil) Nil)) (Node (15,7) (Node (13,6) Nil Nil) (Node (18,8) Nil Nil))

# Task 4

Нека двоично дърво да се представя като: data BTree = Nil | Node Int BTree
BTree. Дефинирайте функция предикат leavesAreEqual :: BTree -> BTree -> Bool, която
получава две двоични дървета bt1 и bt2 и проверява дали възходящата подредба на
стойностите в листата на bt1 е същата като възходящата подредба на стойностите в
листата на bt2.

![Alt text](assets/fh_task4_1.png?raw=true "assets/fh_task4_1.png")
![Alt text](assets/fh_task4_2.png?raw=true "assets/fh_task4_2.png")
![Alt text](assets/fh_task4_3.png?raw=true "assets/fh_task4_3.png")
![Alt text](assets/fh_task4_4.png?raw=true "assets/fh_task4_4.png")

Test cases:

    print $ leavesAreEqual t1 t2 == True
    print $ leavesAreEqual t3 t4 == False

# Task 5

Казваме, че едно двоично дърво е конус, ако сумата на върховете на всяко
ниво на дървото е по-голяма от сумата на върховете на предишното ниво.
Като се използва следното представяне на двоично дърво:
data BTree = Nil | Node Int BTree BTree

a) Да се дефинира функция levelsum t k, която намира сумата на върховете на ниво k в
двоичното дърво t.

b) Да се дефинира функция cone t, която проверява дали двоичното дърво t е конус.

numberBTree:

![Alt text](assets/fh_task5.png?raw=true "assets/fh_task5.png")

Test cases:

    print $ levelSum numberBTree 1 == 11 -- (5 + 6)
    print $ cone numberBTree == True
