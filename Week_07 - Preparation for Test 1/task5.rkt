#lang racket

; The depth of an atom x in a list xs is
; the number of times car must be applied
; to xs in order to reach x.
; Define a procedure that removes all atoms
; that are smaller than their depth.

(define (deep-delete xss)

  )

; can reach "1" by applying "car" one time and "2" can be reached with "caadr".
(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))
