#lang racket


;Define a procedure switch-sum f g n (f, g - procedures, n - number)
;that returns an unary procedure that
;for every x returns this sum:
;f(x) + g(f(x)) + f(g(f(x))) + ... (containing n elements).

(define (switch-sum f g n)
  (λ (x)
    (if (zero? n)
        0
        (+ (f x) ((switch-sum g f (sub1 n)) (f x)))
        )
    )
  )

(define (switch-sum3 f g n)
  (if (zero? n)
        0
        (λ (x) (+ (f x) ((switch-sum g f (sub1 n)) (f x))))
        )
    
  )

(define (switch-sum2 f g n)
  (λ (x)
    (if (zero? n)
        0
        (+ (f x) (switch-sum g f (sub1 n)))
        )
    )
  )

;((switch-sum f=(λ (x) (+ x 1)) g=(λ (x) (* x 2)) n=1) x=2)
;(λ (x=2) (+ (λ (x) (+ x 1) 2) (switch-sum f=(λ (x) (* x 2)) g=(λ (x) (+ x 1)) n=0) x=3) )
;0
;((switch-sum2 (λ (x) (+ x 1)) (λ (x) (* x 2)) 1) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 1) 2) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 2) 2) 9)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 3) 2) 16)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 4) 2) 30)
