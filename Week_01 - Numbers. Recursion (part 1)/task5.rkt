#lang racket

(define (fib-rec n)
  (cond
    [(negative? n) (error "n has to be non-negative")]
    [(< n 2) n]
    [else (+ (fib-rec (sub1 n)) (fib-rec (- n 2)))]
    )
  )

(define (fib-iter n)
  (define (helper leftover n0 n1)
    (cond
      [(zero? leftover) n0]
      [(= leftover 1) n1]
      [else (helper (sub1 leftover) n1 (+ n0 n1))]
      )
    )
  (if (negative? n)
      (error "n has to be non-negative")
      (helper n 0 1)
      )
  )

(= (fib-rec 11) 89)

(fib-iter 5)
(= (fib-iter 11) 89)

