#lang racket

(require math/number-theory)

(define (sum-divs n)
  (define (helper d)
    (cond
      [(> d n) 0]
      [(divides? d n) (+ d (helper (add1 d)))]
      [else (helper (add1 d))]
      )
    )
  (helper 1)
  )

(= (sum-divs 0) 0)
(= (sum-divs 1) 1)
(= (sum-divs 6) 12) ; 1 + 2 + 3 + 6
(= (sum-divs -6) 0)
(= (sum-divs 12345) 19776)
