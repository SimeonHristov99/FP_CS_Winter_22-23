#lang racket

(define (f x)
  (cond
    [(= x 10) "x is 10"]
    [(zero? (remainder x 2)) "x is not 10 but is even"]
    [else "x is not 10 and is not even"]
    )
  )

(f 5)

(display "Hello, world!")

; (+ 5 6)

#|

|#
