#lang racket

(define (find-max n)
  (define (helper max-result leftover)
    (cond
      [(zero? leftover) max-result]
      ;[(= max-result 9) 9]
      [(< max-result (remainder leftover 10)) (helper (remainder leftover 10) (quotient leftover 10))]
      [else (helper max-result (quotient leftover 10))]
      )
    )
  (helper (remainder n 10) (quotient n 10))
  )

(= (find-max 55345) 5)
(= (find-max 14752) 7)
(= (find-max 329450) 9)
(= (find-max 9521) 9)
