#lang racket

(define (sq-avg x y)
  (/ (+ (* x x) (* y y)) 2)
  )

(= (sq-avg 5 0) 12.5)
(= (sq-avg 10 13) 134.5)
