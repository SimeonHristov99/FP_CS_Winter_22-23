# Task 1

A narcissistic number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. Define a predicate that checks whether a given number is a narcissistic number.

> **Implementation detail**: Use only linearly-recursive procedures.

For example, take 153 (3 digits):

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1634 (4 digits):

    1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

Test cases:

```lisp
(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)
```

# Task 2

Define an iterative procedure that accepts two numbers *x* and *n* and calculates the following sum: 1 + x + x^2 + x^3 + ... + x^n.

Test cases:

```lisp
(= (calculate-sum 5 0) 1)
(= (calculate-sum 5 1) 6)
(= (calculate-sum 10 1) 11)
(= (calculate-sum 1 11) 12)
(= (calculate-sum 2 11) 4095)
```

# Task 3

Define a procedure that finds the maximum digit in a number.

Test cases:

```lisp
(= (find-max 55345) 5)
(= (find-max 14752) 7)
(= (find-max 329450) 9)
(= (find-max 9521) 9)
```

# Task 4

Define a recursive procedure *(sum-numbers start finish)* that returns the sum of all numbers from the interval [*start*, *finish*] whose digits are ordered in decreasing order.

Test cases:

```lisp
(= (sum-numbers 1 9) 45)
(= (sum-numbers 199 203) 200)
(= (sum-numbers 219 225) 663)
(= (sum-numbers 225 219) 663)
```

# Task 5

Define a predicate that accepts two non-negative inputs - *x* and *y* and checks whether *x* is a sub-number of *y*.

Test cases:

```lisp
(equal? (sub-num? 123 5123783) #t)
(equal? (sub-num? 0 0) #t)
(equal? (sub-num? 10 101) #t)
(equal? (sub-num? 101 101) #t)
(equal? (sub-num? 10 0) #f)
(equal? (sub-num? 1253 5123783) #f)
(equal? (sub-num? 12 0) #f)
```

# Task 6

A digital root is the recursive sum of all the digits in a number. Given *n*, take the sum of the digits of *n*. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Test cases:

```lisp
(= (digital-root 16) 7)
; => 1 + 6
; => 7
(= (digital-root 942) 6)
; => 9 + 4 + 2
; => 15
; => 1 + 5
; => 6
(= (digital-root 132189) 6)
(= (digital-root 493193) 2)
```

# Task 7

Define the procedure that accepts a whole number - *n*, and a real number (representing radians) - *x*, and returns the n<sup>th</sup> partial sum of *sin(x)*.

Reference the formula for writing *sin(x)* around the origin:

![Alt text](./assets/sine.png?raw=true "Task5")

Test cases:

```lisp
(= (my-sin 100 1.570796) 0.9999999999999465) ; 90 degrees => 0.9999999999999465
(= (my-sin 100 0.5235988) 0.5000000211324931) ; 30 degrees => 0.5000000211324931
```

# For home

# Task 1

Define a procedure that removes the first occurrence of a digit in a number by going from right to left.

Test cases:

```lisp
(= (remove-first-occurrence 15365 5) 1536)
(= (remove-first-occurrence 15360 0) 1536)
(= (remove-first-occurrence 15300 0) 1530)
(= (remove-first-occurrence 15365 1) 5365)
(= (remove-first-occurrence 35365 3) 3565)
(= (remove-first-occurrence 1212 1) 122)
(= (remove-first-occurrence 1212 2) 121)
(= (remove-first-occurrence (remove-first-occurrence 1212 1) 1) 22)
```

# Task 2

By using *find-max* and *remove-first-occurrence*, define a procedure that sorts a number in descending order.

Test cases:

```lisp
(= (sort-n 1714) 7411)
(= (sort-n 123450) 543210)
(= (sort-n 123405) 543210)
(= (sort-n 123045) 543210)
(= (sort-n 120345) 543210)
(= (sort-n 102345) 543210)
(= (sort-n 8910) 9810)
(= (sort-n 321) 321)
(= (sort-n 29210) 92210)
(= (sort-n 1230) 3210)
(= (sort-n 55345) 55543)
(= (sort-n 14752) 75421)
(= (sort-n 329450) 954320)
(= (sort-n 9125) 9521)
```

# Task 3

Define a procedure that accepts two numbers - *x* and *n*, and calculates the n<sup>th</sup> partial sum from the following sequence:

![Alt text](./assets/sequence.png?raw=true "sequence")

Test cases:

```lisp
(calc-series-sum 1 0) ; -2
(calc-series-sum 1 1) ; -2/3
(calc-series-sum 1 2) ; -1 1/5
(calc-series-sum 1 3) ; -1 1/21
(calc-series-sum 1 4) ; -1 11/135
(calc-series-sum 1 5) ; -1 29/385
(calc-series-sum 1 6) ; -1 937/12285
```

# Task 4

Define a recursive procedure *(sum-divisible-numbers start finish k)* that returns the sum of all numbers from the interval [*start*, *finish*] whose digits sum up to a number that is evenly divisible by *k*.

Test cases:

```lisp
(= (sum-divisible-numbers 0 10 5) 5)
(= (sum-divisible-numbers 0 100 5) 990)
(= (sum-divisible-numbers 100 0 5) 990)
```

# Task 5

A number - *x*, is a pentagonal number if we can plot *x* poits in the form of a pentagon on a plain.

For example:

![Alt text](./assets/pentagon.png?raw=true "pentagon")

Define an iterative procedure that accepts a natural number - *n*, and returns the *n*-th pentagonal number.

Test cases:

```lisp
(= (p 1) 1)
(= (p 2) 5)
(= (p 3) 12)
(= (p 4) 22)
(= (p 5) 35)
(= (p 6) 51)
```
