#lang racket

(define (sum-digits-rec n)
  (if (< n 10)
      n
      (+ (remainder n 10) (sum-digits-rec (quotient n 10)))
      )
  )

(= (sum-digits-rec 123) 6)
(= (sum-digits-rec 12345) 15)
