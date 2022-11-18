#lang racket

; The depth of an atom x in a list xs is
; the number of times car must be applied
; to xs in order to reach x.
; Define a procedure that removes all atoms
; that are smaller than their depth.

(require racket/trace)

(define (deep-delete xss)
  (define (helper cars leftover)
    (cond
      [(null? leftover) null]
      [(list? (car leftover)) (append (list (helper (add1 cars) (car leftover)))
                                      (helper cars (cdr leftover)))]
      [(< (car leftover) cars) (helper cars (cdr leftover))]
      [else (cons (car leftover) (helper cars (cdr leftover)))]
      )
    )
  (trace helper)
  (helper 1 xss)
  )

; can reach "1" by applying "car" one time and "2" can be reached with "caadr".
(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))
