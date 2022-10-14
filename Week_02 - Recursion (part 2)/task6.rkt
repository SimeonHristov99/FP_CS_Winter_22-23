#lang racket

(require math/number-theory)

(define (sum-divs n)
  (define (helper d)
    (cond
      [(>= d n) 0]
      [(divides? d n) (+ d (helper (add1 d)))]
      [else (helper (add1 d))]
      )
    )
  (helper 1)
  )

(define (perfect? n)
  ;(= n (- (sum-divs n) n))
  (= n (sum-divs n))
  )

(equal? (perfect? 6) #t)
(equal? (perfect? 33550336) #t)
(equal? (perfect? 495) #f)
(equal? (perfect? 1) #f)
