#lang racket

(define (decreasing? n)
  (if (< n 10)
      #t
      (and
       (<= (remainder n 10) (remainder (quotient n 10) 10))
       (decreasing? (quotient n 10))
       )
      )
  )

(define (sum-numbers start finish)
  (cond
    [(> start finish) (sum-numbers finish start)]
    [(and (= start finish) (decreasing? start)) start]
    [(= start finish) 0]
    [(decreasing? start) (+ start (sum-numbers (add1 start) finish))]
    [else (sum-numbers (add1 start) finish)]
    )
  )

(define (sum-numbers2 start finish)
  (define (helper true-s true-f)
    (cond
      [(> true-s true-f) 0]
      [(decreasing? true-s) (+ true-s (helper (add1 true-s) true-f))]
      [else (helper (add1 true-s) true-f)]
      )
    )
  (helper (min start finish) (max start finish))
  )

;(sum-numbers 1 1)

;(decreasing? 24)
(= (sum-numbers2 1 9) 45)
(= (sum-numbers2 199 203) 200)
(= (sum-numbers2 219 225) 663)
(= (sum-numbers2 225 219) 663)
