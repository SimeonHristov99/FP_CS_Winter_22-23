#lang racket

(define (num-digits n)
  (if (< n 10)
      1
      (add1 (num-digits (quotient n 10)))
      )
  )

(define (narcissistic? n)
  (define (helper len-n leftover)
    (if (zero? leftover)
        0
        (+ (expt (remainder leftover 10) len-n) (helper len-n (quotient leftover 10)))
        )
    )
  (= (helper (num-digits n) n) n)
  )

(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)
