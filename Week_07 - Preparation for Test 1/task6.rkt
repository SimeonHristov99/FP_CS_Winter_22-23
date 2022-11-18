#lang racket

; Define a procedure that accepts a list of pairs
; and an unary function f and returns whether
; all points are part of the graph of the function.

(define (graph-contains-points ps f)
  (andmap (λ (p) (= (f (car p)) (cdr p))) ps)
  )

(equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) add1) #t)
(equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) add1) #f)
