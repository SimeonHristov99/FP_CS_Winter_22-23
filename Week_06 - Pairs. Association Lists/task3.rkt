#lang racket

(define (num-to-xs n)
  (if (zero? n)
      null
      (cons (remainder n 10) (num-to-xs (quotient n 10)))
      )
  )

(define (get-distribution n)
  (define (helper num-xs no-dups)
    (map (λ (x) (cons x (length (filter (λ (y) (= x y)) num-xs)))) no-dups)
    )
  (helper (num-to-xs (* n n)) (remove-duplicates (sort (num-to-xs (* n n)) <)))
  )

(get-distribution 123)
