#lang racket

(require math/number-theory)
(require racket/trace)

(define (num-prime? n)
  (define (helper d)
    (cond
      [(= d (sub1 n))]
      ;[(>= d n) #t]
      ;[(> d (/ n 2)) #t]
      [(> (* d d) n) #t]
      [(divides? d n) #f]
      [else (helper (add1 d))]
      )
    )
  ;(trace helper)
  (if (< n 2)
      #f
      (helper 2)
      )
  )

;n=1
;d=2
;2 = 0
;d=3

(equal? (num-prime? 1) #f)
(equal? (num-prime? 2) #t)
(equal? (num-prime? 3) #t)
(equal? (num-prime? 6) #f)
(equal? (num-prime? 61) #t)
