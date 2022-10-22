# Task 0

Demonstrate the difference between `applicative` and `normal` order evaluation.

# Task 1

Define a higher order procedure that:

- simulates the `identity` procedure. Your procedure should be called `my-identity`;
- accepts a procedure and returns a lambda that accepts an argument and applies that procedure to it;
- accepts a predicate and returns a lambda that accepts an argument and applies the negated predicate to it;
- accepts two procedures and returns their composition over an argument of a lambda procedure;
- returns a procedure that is the partial application of f over x;

Test cases:

```lisp
; write 2 tests for subtask 1

(= ((my-lambda identity) 5) 5)
(equal? ((my-lambda identity) "Tensorflow") "Tensorflow")
(= ((my-lambda string-length) "Tensorflow") 10)

(equal? ((negate-pred even?) 6) #f)

(equal? ((my-compose even? string-length) "Tensorflow") #t)
(equal? ((my-compose (λ (x) (- x 5)) (λ (y) (+ y 25))) 5) 25)

(= ((partially-apply (λ (x y) (+ x y)) 5) 10) 15)
```

# Task 2

Define a higher order procedure that accepts an unary procedure - *f*, and returns a lambda of two real numbers - *x*, *y*, that subtracts f(x) from f(y).

Test cases:

```lisp
(= ((difference (λ (x) (* 2 x))) 15.16 15.20) 0.0799999999999983)
(= ((difference (λ (x) (* 2 x))) 8.5 8) -1)
```

# Task 3

Define a procedure that returns the first order derivative of an unary procedure *f* with precision *eps*.

Recap:

![Alt text](assets/first-derivative.png?raw=true "First Derivative")

Test cases:

```lisp
(= ((derive (λ (x) (* 2 x x x)) 1e-3) 2) 24.0120019999992)
(= ((derive (λ (x) (* 2 x x x)) 1e-6) 2) 24.000012004421478)
```

# Task 4

Define the procedure *derive-n f n eps* that returns the n<sup>th</sup> order derivative of an unary procedure *f* with precision *eps*.

Test case:

```lisp
(= ((derive-n (λ (x) (* 2 x x x)) 3 1e-3) 2) 12.000015203739167)
```

# Task 5

Define the procedures *derive-x f eps* and *derive-y f eps* that correspondingly return the first order derivative of a binary procedure *f* with precision *eps*.

Recap:

![Alt text](assets/partial-x.png?raw=true "First Derivative")

![Alt text](assets/partial-y.png?raw=true "First Derivative")

Test cases:

```lisp
(define (g x y) (+ (* x x x) (* x y) (* y y)))
(= ((derive-x g 0.0001) 2 3) 15.000600010033338)
(= ((derive-y g 0.0001) 2 3) 8.00009999998963)
```

# Task 6

Define a procedure *switch-sum f g n* (*f*, *g* - procedures, *n* - number) that returns an unary procedure that for every x returns this sum: *f(x) + g(f(x)) + f(g(f(x))) +  ...* (containing *n* elements).

Test cases:

```lisp
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 1) 2) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 2) 2) 9)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 3) 2) 16)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 4) 2) 30)
```

# For home

# Task 1

Define a procedure that accepts an unary procedure *f* and a number *y* and returns an unary procedure that for every *x* returns:

- *y*, if it is greater than or equal to the result of applying *f* to *x*;
- the result of applying *f* to *x*, otherwise.

Test cases:

```text
If g is upper-bound (λ (x) (* 2 x)) 100
    then g 50 -> 100
If g is upper-bound (λ (x) (* 2 x)) 100.236
    then g 500.002 -> 1000.004
If g is upper-bound (λ (x) (* 2 x)) 80
    then g 3 -> 80
If g is upper-bound (λ (x) (* 2 x)) 70
    then g 30 -> 70
If g is upper-bound (λ (x) (* 2 x)) 30
    then g 70 -> 140
```

# Task 2

Define a procedure *repeater str* that accepts a string and returns a procedure of two arguments - *count* (number) and *glue* (string). The result from a call to *repeater* should be a string that is *str* repeated *count* times with *glue* being put between every two *str* instances.

Test cases:

```lisp
(equal? ((repeater "I love Racket") 3 " ") "I love Racket I love Racket I love Racket")
(equal? ((repeater "Quack") 5 "!") "Quack!Quack!Quack!Quack!Quack")
```

# Task 3

Define a procedure that takes a single argument procedure and returns it applied n times.

Test cases:

```lisp
(= ((apply-n (λ (x) (* 2 x)) 5) 2) 64)
(= ((apply-n (λ (x) (quotient x 10)) 2) 100) 1)
```

Explanation (test case 1):

```text
We apply 2 * x first to 2, then to (2 * 2) and so on. Thus, we get: (((((2 * 2) * 2) * 2) * 2) * 2) => ((((4 * 2) * 2) * 2) * 2) => (((8 * 2) * 2) * 2) => ((16 * 2) * 2) => (32 * 2) => 64
```
