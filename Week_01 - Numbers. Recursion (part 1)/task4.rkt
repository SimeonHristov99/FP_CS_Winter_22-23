#lang racket

(define (fact-rec n)
  (if (zero? n)
      1
      (* n (fact-rec (sub1 n)))
      )
  )

(define (fact-rec-cond n)
  (cond
    [(negative? n) (error "n has to be non-negative")]
    [(zero? n) 1]
    [else (* n (fact-rec-cond (sub1 n)))]
    )
  )

(define (fact-iter n)
  (define (helper result leftover)
    (if (zero? leftover)
        result
        (helper (* result leftover) (sub1 leftover))
        )
    )
  (if (negative? n)
      (error "n has to be non-negative")
      (helper 1 n)
      )
  )

(= (fact-rec 0) 1)
(= (fact-rec 1) 1)
(= (fact-rec 11) 39916800)

;(fact-rec-cond -5)
(fact-rec-cond 11)

(= (fact-iter 0) 1)
(= (fact-iter 1) 1)
(= (fact-iter 11) 39916800)
