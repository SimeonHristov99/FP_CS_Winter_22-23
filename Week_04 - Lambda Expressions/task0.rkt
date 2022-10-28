#lang racket

;((λ (x y z) (string-append x y z)) "This" " is " "Racket!")

;((λ (x y z) (x y z)) (λ (x y) (+ x y)) 5 6)
;(λ (x=(λ (x y) (+ x y)) y=5 z=6) (x y z))
;((λ (x=5 y=6) (+ x y)) 5 6)
;(+ 5 6)

; BE CAREFUL with running this.
; The following will not end!

(define (f1 x)
  (f1 x)
  )

(define (f2 x y)
  y
  )

(f2 (f1 6) 7)
