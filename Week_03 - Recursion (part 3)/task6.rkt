#lang racket

(define (sum-of-digits n)
  (if (zero? n)
     0
    (+ (remainder n 10) (sum-of-digits (quotient n 10))))
  )

(define (digital-root n)
  (cond
    [(< n 1) (error "n should be natural")]
    [(< n 10) n]
    [else (digital-root (sum-of-digits n))]
      )
  )

(= (digital-root 55) 1)
(= (digital-root 16) 7)
; => 1 + 6
; => 7
(= (digital-root 942) 6)
; => 9 + 4 + 2
; => 15
; => 1 + 5
; => 6
(= (digital-root 132189) 6)
(= (digital-root 493193) 2)
