#lang racket

(define (get-smallest-rec xs)
  (define (helper leftover min-num)
    ;(if (null? leftover)
    ;    min-num
    ;    (helper (cdr leftover) (min min-num (car leftover)))
    ;    )
    (cond
      [(null? leftover) min-num]
      [(< (car leftover) min-num) (helper (cdr leftover) (car leftover))]
      [else (helper (cdr leftover) min-num)]
      ))
  (if (null? xs)
      (error  "Empty list")
      (helper (cdr xs) (car xs))
      )
  )

(define (get-smallest-proc xs)
  (apply min xs)
  )

(define (get-smallest-fold-proc xs)
  (foldl min (car xs) (cdr xs))
  )

(define (get-smallest-fold-no-proc xs)
  (foldl (λ (x acc) (if (< x acc) x acc)) (car xs) (cdr xs))
  )

; using a recursive procedure
(= (get-smallest-rec '(1 2 5)) 1)
(= (get-smallest-rec '(2 1 5)) 1)
(= (get-smallest-rec '(2 1 -1 5)) -1)

; with a predefined procedure
(= (get-smallest-proc '(1 2 5)) 1)
(= (get-smallest-proc '(2 1 5)) 1)
(= (get-smallest-proc '(2 1 -1 5)) -1)

;(foldl x= acc=(car xs) (cdr '(2 1 5)))

; using a folding with a predefined procedure
(= (get-smallest-fold-proc '(1 2 5)) 1)
(= (get-smallest-fold-proc '(2 1 5)) 1)
(= (get-smallest-fold-proc '(2 1 -1 5)) -1)

; using a folding without a predefined procedure
(= (get-smallest-fold-no-proc '(1 2 5)) 1)
(= (get-smallest-fold-no-proc '(2 1 5)) 1)
(= (get-smallest-fold-no-proc '(2 1 -1 5)) -1)
