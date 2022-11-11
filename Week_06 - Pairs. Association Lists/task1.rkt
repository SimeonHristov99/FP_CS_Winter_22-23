#lang racket

(define (assoc-rec x xs)
  (cond
    [(null? xs) #f]
    [(equal? (caar xs) x) (cdar xs)]
    [else (assoc-rec x (cdr xs))]
    )
  )

(define (assoc-hop x xs)
  (let ([filtered (filter (λ (p) (equal? (car p) x)) xs)]
        )
    (if (null? filtered)
        #f
        (cdar filtered)
     ))
  )

(define (assoc-builtin x xs)
  (let ([res-assoc (assoc x xs)])
    (if (not res-assoc)
        #f
        (cdr res-assoc)
        ))
  )

; using a recursive process
(equal? (assoc-rec 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")

; using a higher order procedure
(equal? (assoc-hop 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
(equal? (assoc-hop 42 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) #f)

; using a built-in procedure
(equal? (assoc-builtin 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
