#lang racket

(define (difference f)
  (λ (x y) (- (f y) (f x)))
  )

(= ((difference (λ (x) (* 2 x))) 15.16 15.20) 0.0799999999999983)
(= ((difference (λ (x) (* 2 x))) 8.5 8) -1)
