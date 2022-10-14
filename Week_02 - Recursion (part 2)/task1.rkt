#lang racket

(require racket/trace)

(define (rev n)
  (define (helper leftover result)
    (if (zero? leftover)
        result
        (helper (quotient leftover 10) (+ (* result 10) (remainder leftover 10)))
        )
    )
  (trace helper)
  (if (negative? n)
      (error "n has to be non-negative")
      (helper n 0)
      )
  )

(define (palindrome? n)
  (= n (rev n))
  )

(equal? (palindrome? 1) #t)
(equal? (palindrome? 6) #t)
(equal? (palindrome? 1010) #f)
(equal? (palindrome? 505) #t)
(equal? (palindrome? 123321) #t)
(equal? (palindrome? 654) #f)
(equal? (palindrome? 121) #t)
(equal? (palindrome? 12) #f)
(equal? (palindrome? 120) #f)
(equal? (palindrome? 12321) #t)
(equal? (palindrome? 1221) #t)
