# Task 0

Write and explain the `Hello, world!` function.

# Task 1

Define functions that return:

- the smaller of two whole numbers:
  - add a test with negative numbers;
  - using if-else;
  - using guards;
  - using a built-in function.
- the last digit of a whole number.
- the quotient of the division of two whole numbers.
- the quotient and remainder of the division of two whole numbers.
- a whole number without its last digit.
- the quotient and remainder of the division of two real numbers.
- the quotient of the division of two real numbers.
- the average of two whole numbers.
- the number rounded to the second decimal digit.

Test cases:

```haskell
print $ minIf 15 60 == 15
print $ minIf 60 15 == 15
print $ minGuard 15 60 == 15
print $ minGuard 60 15 == 15
print $ minBuiltIn 60 15 == 15

print $ lastDigit 154 == 4

print $ quotientWhole 64 2 == 32
print $ divWhole 154 17 == 9.058823529411764

print $ removeLastDigit 154 == 15    

print $ divReal 154.451 10.01 == 15.42967032967033
print $ quotientReal 154.21 17.17 == 9

print $ avgWhole 5 1542 == 773.5

print $ roundTwoDig 3.1413465345321 == 3.14
print $ roundTwoDigButWithMagic 3.1413465345321 == 3.14 -- partial function application and composition (defining a function at functional level)
```

# Task 2

Define a predicate *isInside a b x* that checks whether a number *x* is in an interval [*a*, *b*].

- solve with boolean expressions;
- solve with lists;
- solve using a lambda.

Test cases:

```haskell
print $ isInsideNoLists 5 1 4 == True
print $ isInsideNoLists 10 50 20 == True
print $ isInsideNoLists 10 50 1 == False

print $ isInsideLists 5 1 4 == True
print $ isInsideLists 10 50 20 == True
print $ isInsideLists 10 50 1 == False

print $ (isInsideLambda 5 1) 4 == True
print $ (isInsideLambda 10 50) 20 == True
print $ (isInsideLambda 10 50) 1 == False
```

# Task 3

Define a recursive and an iterative function for calculating the factorial of a non-negative number.

- solve with a linearly recursive process;
- solve using a linearly iterative process.
- solve with lists assuming correct input;

Test cases:

```haskell
print $ factXs 11 == 39916800
print $ factRec 11 == 39916800
--print $ factRec (-11) -- error: x was negative
print $ factIter 11 == 39916800
--print $ factIter (-11) -- error: x was negative
```

# Task 4

Define a recursive and an iterative function for calculating the number at index *i* in the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...).

> **Note**: Assume correct input.

Test cases:

```haskell
print $ fibRec 11 == 89

print $ fibIter 11 == 89
print $ fibIter 110 == 43566776258854844738105
```

# For home

# Task 1

Define a function that returns the average of the sum of the squares of two **whole** numbers.

Test cases:

```haskell
print $ sqAvg 5 0 == 12.5
print $ sqAvg 10 13 == 134.5
```

# Task 2

Define a function for calculating the GCD of two whole numbers.

> **Implementation detail**: Normally, you would use the built-in function `gcd`.

- solve using guards;
- solve using pattern matching. <- The preferred way!

Recap:

```text
The Euclidean Algorithm for finding GCD(x,y) is as follows:
If x = 0 then GCD(x,y)=y.
If y = 0 then GCD(x,y)=x.
Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).
```

Test cases:

```haskell
print $ myGcdG 5 13 == 1
print $ myGcdG 13 1235 == 13

print $ myGcdPM 5 13 == 1
print $ myGcdPM 13 1235 == 13
```

# Task 3

Define a predicate that checks whether a non-negative number is a palindrome.

Test cases:

```haskell
print $ isPalindrome 6 == True
print $ isPalindrome 1010 == False
print $ isPalindrome 505 == True
print $ isPalindrome 123321 == True
print $ isPalindrome 654 == False
```

# Task 4

Two numbers are amicable if the sum of the divisors of one of them is equal to the other. Define a predicate that checks whether two numbers are amicable.

Test cases:

```haskell
print $ areAmicable 200 300 == False
print $ areAmicable 220 284 == True
print $ areAmicable 284 220 == True
print $ areAmicable 1184 1210 == True
print $ areAmicable 2620 2924 == True
print $ areAmicable 6232 6368 == True
```

# Task 5

Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

Test cases:

```haskell
print $ hasIncDigits 1244 == True
print $ hasIncDigits 12443 == False
```

# Task 6

Define a predicate that checks whether a number is prime.

- solve using guards;
- solve using **list comprehension** in **ONE** line.

Test cases:

```haskell
print $ isPrimeG 1 == False
print $ isPrimeG 2 == True
print $ isPrimeG 3 == True
print $ isPrimeG 6 == False
print $ isPrimeG 61 == True

print $ isPrimeLC 1 == False
print $ isPrimeLC 2 == True
print $ isPrimeLC 3 == True
print $ isPrimeLC 6 == False
print $ isPrimeLC 61 == True
```

# Task 7

A number is perfect if and only if it is natural and equal to the sum of its divisors excluding the number itself. Define a predicate that checks whether a number is perfect.

> **Implementation detail**: Use list comprehension.

Test cases:

```haskell
print $ isPerfect 1 == False
print $ isPerfect 6 == True
print $ isPerfect 495 == False
print $ isPerfect 33550336 == True
```
