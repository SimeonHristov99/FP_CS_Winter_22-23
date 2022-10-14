#lang racket

(define (pow-rec x n)
  (if (zero? n)
      1
      (* (pow-rec x (sub1 n)) x)

   )
  )

(define (pow-iter x n)
  (define (helper result leftover)
    (if (zero? leftover)
        result
        (helper (* result x) (sub1 leftover))
        )
    )
  (helper 1 n)
  )

(= (pow-rec 2 5) 32)
(= (pow-rec 15 3) 3375)

(= (pow-iter 2 5) 32)
(= (pow-iter 15 3) 3375)
