#lang racket

(define (derive-x f eps)
  (λ (x y) (/
            (- (f (+ x eps) y) (f x y))
            eps
            ))
  )

(define (derive-y f eps)
  (λ (x y) (/
            (- (f x (+ y eps)) (f x y))
            eps
            ))
  )

; will not work
(define (derive-y2 f eps)
  (λ (y x) (/
            (- (f (+ x eps) y) (f x y))
            eps
            ))
  )

(define (g x y) (+ (* x x x) (* x y) (* y y)))

;((derive-y2 g 0.0001) 2 3)
;((derive-y2 g 0.0001) 2 3)(= ((derive-x g 0.0001) 2 3) 15.000600010033338)
;(= ((derive-y g 0.0001) 2 3) 8.00009999998963)

(= ((derive-x g 0.0001) 2 3) 15.000600010033338)
(= ((derive-y g 0.0001) 2 3) 8.00009999998963)
