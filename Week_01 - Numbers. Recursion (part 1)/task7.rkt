#lang racket

(define (is-even-if n)
  (if (even? n) "Yes" "No")
  )

(define (is-even-guards n)
  (cond
    [(even? n) "Yes"]
    [else "No"]
    )
  )

(equal? (is-even-if 2) "Yes")
(equal? (is-even-if 15452) "Yes")
(equal? (is-even-if 321) "No")

(equal? (is-even-guards 2) "Yes")
(equal? (is-even-guards 15452) "Yes")
(equal? (is-even-guards 321) "No")
