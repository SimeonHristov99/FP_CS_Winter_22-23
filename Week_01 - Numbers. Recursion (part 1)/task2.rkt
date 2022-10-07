#lang racket

(define (sum-cubes-pow x y)
  (+ (expt x 3) (expt y 3))
  )

(define (sum-cubes-no-pow x y)
  (+ (* x x x) (* y y y))
  )

(= (sum-cubes-pow 5 1) 126)
(= (sum-cubes-pow 10 50) 126000)

(= (sum-cubes-no-pow 5 1) 126)
(= (sum-cubes-no-pow 10 50) 126000)
