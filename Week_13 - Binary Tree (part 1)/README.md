# Task 1

Define a recursive polymorphic algebraic type called *BTree*. Create the following instances and print them:

*numberBTree*:

![Alt text](assets/task1_1.png?raw=true "task1_1.png")

*charBTree*:

![Alt text](assets/task1_2.png?raw=true "task1_2.png")

Define the following functions:

    ​​size - returns the number of nodes;
    sumTree - returns the sum of the nodes (should work only for trees that store numbers in their nodes);​
    traverseDFS​ - prints the nodes using DFS;
    getLevel - accepts a whole number k and returns the nodes at level k (root is at level 0);
    traverseBFS - prints the nodes using BFS;
    mapTree - maps an unary function to the tree.

Test cases:

```haskell
print $ numberBTree
print $ charBTree

print $ size numberBTree == 9
print $ size charBTree == 7

print $ sumTree numberBTree == 146
-- print $ sumTree charBTree -- should not work

print $ traverseDFS numberBTree == [96, 1, 12, 0, 5, 2, 4, 5, 21]
print $ traverseDFS charBTree == "haskell"

print $ getLevel numberBTree 2 == [1, 0, 2, 5]
print $ getLevel charBTree 1 == "al"
print $ getLevel charBTree 3 == []

print $ traverseBFS numberBTree == [5,12,4,1,0,2,5,96,21]
print $ traverseBFS charBTree == "kalhsel"

print $ mapTree numberBTree (*2) == Node 10 (Node 24 (Node 2 (Node 192 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 4 Nil Nil) (Node 10 Nil (Node 42 Nil Nil)))
print $ mapTree numberBTree (show) == Node "5" (Node "12" (Node "1" (Node "96" Nil Nil) Nil) (Node "0" Nil Nil)) (Node "4" (Node "2" Nil Nil) (Node "5" Nil (Node "21" Nil Nil)))
print $ mapTree charBTree (toUpper) == Node 'K' (Node 'A' (Node 'H' Nil Nil) (Node 'S' Nil Nil)) (Node 'L' (Node 'E' Nil Nil) (Node 'L' Nil Nil))
```

# Task 2

Given a list of unique whole numbers construct a *maximum binary tree*. A binary tree is a *maximum binary tree* if:

- The root is the maximum number in the list.
- The left subtree is the maximum tree constructed from the elements on the left of the of the maximum number.
- The right subtree is the maximum tree constructed from the elements on the right of the maximum number.

Test case:

    t:
           6
        /     \
       3       5
       \       /
        2    0
         \
          1

```haskell
print $ constructMaxBTree [3, 2, 1, 6, 0, 5] == t
```

# Task 3

For the following tree complete the actions below:

![Alt text](assets/task3.png?raw=true "task3.png")

    - print it;
    - define a function that:
        - returns its size;
        - returns the elements at level k.

Test cases:

```haskell
print $ t
print $ size t == 13
print $ getLevel t 3 == [1, 2]
```

Tree:

    t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

# Task 4

Define a predicate that checks whether a whole number binary tree is a binary search tree.

Test cases:

```haskell
print $ isBinarySearchTree t3 == True
print $ isBinarySearchTree t4 == False
print $ isBinarySearchTree t5 == False
print $ isBinarySearchTree t6 == False
```

Trees used:

    t3 :: BTree
    t3 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 6 (Node 4 Nil Nil) (Node 7 Nil Nil))) (Node 10 Nil (Node 14 (Node 13 Nil Nil) Nil))
    
    t4 :: BTree
    t4 = Node 8 (Node 3 (Node 5 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 14 Nil Nil))
    
    t5 :: BTree
    t5 = Node 8 (Node 3 (Node 2 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 1 Nil Nil))
    
    t6 :: BTree
    t6 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 4 Nil Nil)) (Node 10 (Node 5 Nil Nil) Nil)

# Task 5

![Alt text](assets/task5.png?raw=true "task5.png")

# For home

# Task 1

For the trees in task 1 (that we solved in class) define the following functions:

    ​​height (number of nodes along the longest branch);​
    average - returns the average of the nodes (should work only for trees that store numbers in their nodes);
    ​​sumLeaves​ - returns the sum of the leaves (should work only for trees that store numbers in their nodes);
    areEqual - checks whether two trees are identical;
    setLevels - replaces the values in all nodes with the vector ("level", "value");
    mirrorTree - returns the symmetric tree.

Test cases:

```haskell
print $ height numberBTree == 4
print $ height charBTree == 3

print $ average numberBTree == 16.22
--print $ average charBTree -- should not work

print $ sumLeaves numberBTree == 119
--print $ sumLeaves charBTree -- shouldn't work

print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) == False
print $ areEqual charBTree charBTree == True
print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) == False

print $ setLevels numberBTree == Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Nil Nil) Nil) (Node (2,0) Nil Nil)) (Node (1,4) (Node (2,2) Nil Nil) (Node (2,5) Nil (Node (3,21) Nil Nil)))
print $ setLevels charBTree == Node (0,'k') (Node (1,'a') (Node (2,'h') Nil Nil) (Node (2,'s') Nil Nil)) (Node (1,'l') (Node (2,'e') Nil Nil) (Node (2,'l') Nil Nil))

print $ mirrorTree numberBTree == Node 5 (Node 4 (Node 5 (Node 21 Nil Nil) Nil) (Node 2 Nil Nil)) (Node 12 (Node 0 Nil Nil) (Node 1 Nil (Node 96 Nil Nil)))
print $ mirrorTree charBTree == Node 'k' (Node 'l' (Node 'l' Nil Nil) (Node 'e' Nil Nil)) (Node 'a' (Node 's' Nil Nil) (Node 'h' Nil Nil))
```

# Task 2

A colour may be either red, green or blue. Create an instance of the following tree and do the following:

![Alt text](assets/task4.png?raw=true "task4.png")

    - print it;
    - define a function that accepts a colour and returns the hight of the highest node of that colour.

Test cases:

```haskell
print $ colourBTree
print $ highest Red colourBTree == 4
print $ highest Green colourBTree == 3
print $ highest Blue colourBTree == 4
```

# Task 3

A tree is graceful if the absolute difference between a node and its father is an even number. Define a predicate that returns whether a tree is graceful.

![Alt text](assets/task5_1.png?raw=true "task5_1.png")
![Alt text](assets/task5_2.png?raw=true "task5_2.png")

Test cases:

```haskell
print $ isGraceful t1 == True -- t1 = A
print $ isGraceful t2 == True -- t2 = B
print $ isGraceful t3 == False -- t3 = C
```

# Task 4

By using the following types define a function that accepts a list of records and returns the hardest subject.

Type definitions:

```haskell
type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)
```

Test cases:

```haskell
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"
```

# Task 5

Let *(x, y, z)* be a vector representing the nodes of a binary tree such that *x* is the value of the current node, *y* and *z* are the values of the child nodes. Define a function that returns the leaves of such a tree.

Test cases:

```haskell
print $ listLeaves [(1, 2, 3), (2, 4, 5)] == [3, 4, 5]
print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]
```

# Task 6

Define a function that accepts a list of whole number one-argument functions *[f<sub>1</sub>, f<sub>2</sub> .. f<sub>n</sub>]* and returns a function that for every *x* calculates the composition of the functions **with odd indices**: *f<sub>1</sub>(f<sub>3</sub>(...(f<sub>n</sub>x)...))*.

> **Note**: You must solve the task with one line of code using folding.

Test case:

```haskell
print $ (getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2
```

# Task 7

Define a function that accepts an infinite list of numbers *[x<sub>1</sub>, x<sub>2</sub> .. ]* and returns a function that for every *x* and *y* calculates the expression *(x - x<sub>1</sub>) (x - x<sub>2</sub>) .. (x - x<sub>y</sub>)*.

Test case:

    If g is myPoly [2.7, 3.0 ..]
        then g 2.2 3 -> -0.4399999999999998

# Task 8

The nodes in the following picture resemble the lower and higher bounds of an interval (the first number will always be lower than the second). Define a function that checks whether such a binary tree is ordered according to the relation *subinterval*.

![Alt text](assets/task11_1.png?raw=true "task11_1.png")
![Alt text](assets/task11_2.png?raw=true "task11_2.png")

Test cases:

```haskell
print $ ordered t1 == True
print $ ordered t2 == False
```
