#lang racket

(define (num-to-xs n)
  (define (helper leftover)
    (if (< leftover 10)
        (list leftover)
        (cons (remainder leftover 10) (helper (quotient leftover 10)))
        )
    )
  (reverse (helper n))
  )

; will not work
(define (num-to-xs2 n)
  (if (zero? n)
      null
      (reverse (cons (remainder n 10) (num-to-xs2 (quotient n 10))))
      )
  )

(num-to-xs2 123)

(define (xs-to-num xs)
  (foldl (λ (x acc) (+ (* acc 10) x)) 0 xs)
  )

(equal? (num-to-xs 123) '(1 2 3))
(equal? (num-to-xs 123456789) '(1 2 3 4 5 6 7 8 9))

(= (xs-to-num '(1 2 3)) 123)
(= (xs-to-num '(1 2 3 4 5 6 7 8 9)) 123456789)
