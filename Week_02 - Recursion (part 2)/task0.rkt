#lang racket

(require math/number-theory)
(require racket/trace)


(define (fact-rec n)
  (if (zero? n)
      1
      (* n (fact-rec (sub1 n)))
      )
  )



(define (fact-rec-cond n)
  (cond
    [(negative? n) (error "n has to be non-negative")]
    [(zero? n) 1]
    [else (* n (fact-rec-cond (sub1 n)))]
    )
  )

(define (fact-iter n)
  (define (helper result leftover)
    (if (zero? leftover)
        result
        (helper (* result leftover) (sub1 leftover))
        )
    )
  (trace helper)
  (if (negative? n)
      (error "n has to be non-negative")
      (helper 1 n)
      )
  )

(trace fact-iter)

;(fact-iter 5)


(define (fib-rec n)
  (cond
    [(negative? n) (error "n has to be non-negative")]
    [(< n 2) n]
    [else (+ (fib-rec (sub1 n)) (fib-rec (- n 2)))]
    )
  )

(define (fib-iter n)
  (define (helper leftover n0 n1)
    (cond
      [(zero? leftover) n0]
      [(= leftover 1) n1]
      [else (helper (sub1 leftover) n1 (+ n0 n1))]
      )
    )
  (if (negative? n)
      (error "n has to be non-negative")
      (helper n 0 1)
      )
  )

(fib-rec 5)
;(fib-rec 50)
(fib-iter 50)



