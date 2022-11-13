# Solve tasks from last time

# Task 1

Define a procedure that accepts a list of nested lists and returns a list containing only one level with all the elements from all lists.

Test case:

```lisp
(equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))
```

# Task 2

The depth of an atom *x* in a list *xs* is the number of times *car* must be applied to *xs* in order to reach *x*. Define a procedure that removes all atoms that are smaller than their depth.

Test case:

```lisp
; can reach "1" by applying "car" one time and "2" can be reached with "caadr".
(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))
```

# Task 3

Define a procedure that accepts a list of pairs and an unary function *f* and returns whether all points are part of the graph of the function.

Test cases:

```lisp
(equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) (λ (x) (add1 x))) #t)
(equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) (λ (x) (add1 x))) #f)
```

# Task 4

Define a procedure that takes a matrix *xss*, and returns a modified version of it *modified-xss* in which if a row in *xss* has a zero then the whole row in *modified-xss* contains only zeros.

Test case:

```lisp
(equal? (zero-rows '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 0 0) (3 4 1) (0 0 0) (4 2 4)))
```
