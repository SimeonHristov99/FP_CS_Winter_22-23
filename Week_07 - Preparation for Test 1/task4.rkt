#lang racket

; Define a procedure that accepts a list of nested lists
; and returns a list containing only one level with all
; the elements from all lists.

(define (my-flatten xss)

  )

(equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))
