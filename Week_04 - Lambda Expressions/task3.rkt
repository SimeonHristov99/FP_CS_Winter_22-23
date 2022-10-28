#lang racket

(define (derive f eps)
  (λ (x) (/
          (- (f (+ x eps)) (f x))
          eps
          ))
  )


;(define (derive2 f eps)
;  (/
;   (λ (x) (- (f (+ x eps)) (f x)))
;   eps
;   )
;  )

(define (f x)
  (if (negative? x)
      (error "x was negative")
      (λ (y) (add1 y))
   )
  )

(define (f2 x)
  (λ (y)
    (if (negative? x)
        (error "x was negative")
        (add1 y)
        )
    )
  )

((f 6) 42)
((f2 6) 42)

(= ((derive (λ (x) (* 2 x x x)) 1e-3) 2) 24.0120019999992)
(= ((derive (λ (x) (* 2 x x x)) 1e-6) 2) 24.000012004421478)
