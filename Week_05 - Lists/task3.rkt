#lang racket

(define (elem-rec-with-if? x xs)
  (cond
    [(null? xs) #f]
    [(equal? (car xs) x) #t]
    [else (elem-rec-with-if? x (cdr xs))]
    )
  )

(define (elem-rec-without-if? x xs)
  (and
   (not (null? xs))
   (or
    (equal? x (car xs))
    (elem-rec-without-if? x (cdr xs))
    )
   )
  )

(define (elem-proc? x xs)
  (list? (member x xs))
  )

; using an if-else statement
(equal? (elem-rec-with-if? 1 '(5 2 1)) #t)
(equal? (elem-rec-with-if? "str" '()) #f)
(equal? (elem-rec-with-if? "str" '("str" "len" "pair")) #t)

; without using an if-else statement
(equal? (elem-rec-without-if? 1 '(5 2 1)) #t)
(equal? (elem-rec-without-if? "str" '()) #f)
(equal? (elem-rec-without-if? "str" '("str" "len" "pair")) #t)

; using a predefined procedure
(equal? (elem-proc? 1 '(5 2 1)) #t)
(equal? (elem-proc? "str" '()) #f)
(equal? (elem-proc? "str" '("str" "len" "pair")) #t)
