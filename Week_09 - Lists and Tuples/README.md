# Task 1

In **ONE** line of code:

- reverse a whole number;
- reverse a whole number but with 🪄 ;
- find the sum of the divisors of a whole number **via list comprehension**;
- find the sum of the divisors of a whole number **via higher order functions**;
- check whether a whole number is prime **via list comprehension**;
- check whether a whole number is prime **via higher order functions**.
  
> **Note**: Assume valid input.

Test cases:

```haskell
print $ revOneLine 123 == 321
print $ revOneLineMagic 123 == 321

print $ sumDivsOneLineLC 6 == 12
print $ sumDivsOneLineHOF 6 == 12

print $ primeOneLineLC 6 == False
print $ primeOneLineLC 17 == True

print $ primeOneLineHOF 6 == False
print $ primeOneLineHOF 17 == True
```

# Task 2

Define a function that:

- adds 1 to every element in a list using partial application;
- adds 1 to a number using partial application;
- squares a number and adds one using partial application and function composition.

Test cases:

```haskell
print $ addOneXsPA [1, 2, 3, 4, 5] == [2, 3, 4, 5, 6]
print $ addOneNPA 5 == 6
print $ sqPlusOne 5 == 26
```

# Task 3

Define a function that returns the sum of the smallest and biggest divisors of a natural number that are palindrome and greater than 1.

- use list comprehension;
- use higer order functions.

Test cases:

```haskell
print $ getPalindromesLC 132465 == 8
print $ getPalindromesLC 654546 == 8
print $ getPalindromesLC 100001 == 100012
print $ getPalindromesLC 21612 == 21614
print $ getPalindromesLC 26362 == 26364

print $ getPalindromesHOF 132465 == 8
print $ getPalindromesHOF 654546 == 8
print $ getPalindromesHOF 100001 == 100012
print $ getPalindromesHOF 21612 == 21614
print $ getPalindromesHOF 26362 == 26364
```

# Task 4

Define a function that returns the sum of the uneven numbers in a range.

- use list comprehension
- use higer order functions

Test cases:

```haskell
print $ sumUnevenLC 5 50 == 621
print $ sumUnevenLC 50 1 == 625
print $ sumUnevenLC 564 565 == 565

print $ sumUnevenHOF 5 50 == 621
print $ sumUnevenHOF 50 1 == 625
print $ sumUnevenHOF 564 565 == 565
```

# Task 5

Define a function that checks whether the digits of a non-negative number are ordered in a non-strictly ascending order.

> **Note**: The implementation **must not** include *div* or *mod*.

Test cases:

```haskell
print $ isAscending 0 == True
print $ isAscending 10 == False
print $ isAscending 122 == True
print $ isAscending 123 == True
print $ isAscending 12340 == False
print $ isAscending 12349 == True
```

# Task 6

Define a function accepts two lists with equal lengths - *xs* and *ys*, and checks whether there exists a whole number *n*, such that *y<sub>i</sub> = n + x<sub>i</sub>*.

Test cases:

```haskell
print $ isImage [] [] == True
print $ isImage [1, 2, 3] [2, 3, 4] == True
print $ isImage [1, 2, 3] [4, 6, 9] == False
print $ isImage [1, 2, 3] [2, 5, 4] == False
```

# Task 7

Define a function that takes a word and returns a list of tuples in the form *(x, xCount)* where for each letter *x* *xCount* is the number of times it is present in the word. Ignore capitalization.

Test cases:

```haskell
print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]
```

# Task 8

Define a function that accepts a list of whole numbers and returns a list of lists, such that each list contains a sequence of consecutive numbers.

Test cases:

```haskell
print $ pack [1, 2, 3, 7, 8 ,9] == [[1,2,3],[7,8,9]]
print $ pack [1, 7, 8 ,9] == [[1],[7,8,9]]
print $ pack [1, 9] == [[1],[9]]
```

# For home

# Task 1

Define a function that accepts a list of whole numbers - *xs* and a number - *n* and:

- adds that number to every element in the list;
- calculates (x + n)<sup>2</sup> using function composition (x spans xs).
- divides every number in *xs* by *n*. The declaration should be *divByN :: [Int] -> Int -> [Double]*;
- removes all numbers smaller than *n* from *xs*.

> **Implementation details**:

```text
1. Use partial function application!
2. Include a test case where n is a negative number in divByN!
```

Test cases:

```haskell
print $ addN [1, 2, 3, 4, 5] 9999999999999999999999 == [10000000000000000000000,10000000000000000000001,10000000000000000000002,10000000000000000000003,10000000000000000000004]
print $ sqAddN [1, 2, 3, 4, 5] 5 == [36,49,64,81,100]
print $ divByN [1, 2, 3, 4, 5] 5 == [0.2,0.4,0.6,0.8,1.0]
print $ filterByN [1, 2, 3, 4, 5] 3 == [3,4,5]
```

# Task 2

Define a function *sumSpecialPrimes n d* that returns the sum of the first *n* prime numbers that contain a digit *d*.

Test cases:

```haskell
print $ sumSpecialPrimes 5 2 == 392
print $ sumSpecialPrimes 5 3 == 107
print $ sumSpecialPrimes 10 3 == 462
```

# Task 3

Define **TWO** functions - *mergeLinearRec* and *mergeXs*. They accept two sorted lists and combine them into one that is also sorted.

> **Implementation details**:

```text
mergeLinearRec should implement a linear recursive process!
mergeXs should have only list manipulations!
mergeXs should be solved with ONE line of code!
```

Test cases:

```haskell
print $ mergeLinearRec [1, 2, 3] [2, 3, 4, 5, 6] == [1, 2, 3, 4, 5, 6]
print $ mergeLinearRec [1, 2, 3] [2] == [1, 2, 3]
print $ mergeLinearRec [1, 2, 3] [7, 8, 9] == [1, 2, 3, 7, 8, 9]
print $ mergeLinearRec [2, 3, 4, 5, 6] [1, 2, 3] == [1,2,3,4,5,6]
print $ mergeLinearRec [2] [1, 2, 3] == [1,2,3]
print $ mergeLinearRec [7, 8, 9] [1, 2, 3] == [1,2,3,7,8,9]
print $ mergeLinearRec [7, 9, 11] [8, 10, 12] == [7,8,9,10,11,12]
-- repeat the same tests with mergeXs
```

# Task 4

Define a function that returns a list of the prime numbers in a given interval.

> **Implementation detail**: Use list comprehension wherever possible!

Test cases:

```haskell
print $ primesInRange 1 100 == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
print $ primesInRange 100 1 == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
```

# Task 5

Define a function that takes a whole number and returns its ascending left suffix. The ascending left suffix of a number is the number that forms a strictly ascending sequence, if read from right to left.

Test cases:

```haskell
print $ reverseOrdSuff 37563 == 36
print $ reverseOrdSuff 32763 == 367
print $ reverseOrdSuff 32567 == 7
print $ reverseOrdSuff 32666 == 6
```

# Task 6

Write a function that sums the unique numbers in the sublists of a list.

Test cases:

```haskell
print $ sumUnique [[1,2,3,2],[-4,-4],[5]] == 9 -- (= 1 + 3 + 5)
print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]] == 0
print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]] == 45
```

# Task 7

Write a function returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Test cases:

```haskell
print $ duplicateCount "" == 0 -- no characters repeats more than once
print $ duplicateCount "abcde" == 0
print $ duplicateCount "aabbcde" == 2 -- 'a' and 'b'
print $ duplicateCount "aabBcde" == 2 -- 'a' occurs twice and 'b' twice (`b` and `B`)
print $ duplicateCount "indivisibility" == 1 -- 'i' occurs six times
print $ duplicateCount "Indivisibility" == 1
print $ duplicateCount "aA11" == 2 -- 'a' and '1'
print $ duplicateCount "ABBA" == 2 -- 'A' and 'B' each occur twice
print $ duplicateCount "Indivisibilities" == 2 -- 'i' occurs seven times and 's' occurs twice
print $ duplicateCount ['a'..'z'] == 0
print $ duplicateCount (['a'..'z'] ++ ['A'..'Z']) == 26
```

# Task 8

Define a function that accepts a string and removes all duplicate letters.

Two letters are duplicate, if:

```text
- they represent the same character;
- they are next to each other;
- the first is uppercase and the second - lowercase (or vice versa).
```

Test case:

```haskell
print $ reduceStr "dabAcCaCBAcCcaDD" == "dabCBAcaDD" -- dabAcCaCBAcCcaDD -> dabAaCBAcCcaDD -> dabCBAcCcaDD -> dabCBAcaDD
                                                            ^^                 ^^                   ^^
```
