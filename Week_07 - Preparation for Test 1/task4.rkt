#lang racket

; Define a procedure that accepts a list of nested lists
; and returns a list containing only one level with all
; the elements from all lists.

(define (my-flatten xss)
  (define (helper result leftover)
    (cond
      [(null? leftover) result]
      [(list? (car leftover)) (helper result (append (car leftover) (cdr leftover)))]
      [else (helper (append result (list (car leftover))) (cdr leftover))]
      )
    )
  (helper '() xss)
  )

(define (my-flatten2 xss)
  (define (helper leftover)
    (cond
      [(null? leftover) null]
      [(list? (car leftover)) (append (helper (car leftover)) (helper (cdr leftover)))]
      [else (cons (car leftover) (helper (cdr leftover)))]
      )
    )
  (helper xss)
  )

(equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))
