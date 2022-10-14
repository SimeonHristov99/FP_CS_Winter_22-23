#lang racket

(define (inc-digits? n)
  (cond
    [(< n 10) #t]
    [(>= (remainder n 10) (remainder (quotient n 10) 10)) (inc-digits? (quotient n 10))]
    [else #f]
    )
  )

(equal? (inc-digits? 1244) #t)
(equal? (inc-digits? 12443) #f)
