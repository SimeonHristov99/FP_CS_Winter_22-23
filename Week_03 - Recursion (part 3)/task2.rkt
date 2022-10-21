#lang racket

(define (calculate-sum x n)
  (define (helper result leftover)
    (if (zero? leftover)
        result
        (helper (+ result (expt x leftover)) (sub1 leftover))
        )
    )
  (helper 1 n)
  )


(calculate-sum 0 0)
(= (calculate-sum 5 0) 1)
(= (calculate-sum 5 1) 6)
(= (calculate-sum 10 1) 11)
(= (calculate-sum 1 11) 12)
(= (calculate-sum 2 11) 4095)
