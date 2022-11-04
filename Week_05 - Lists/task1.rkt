#lang racket

;(foldr (λ (x acc) (and x acc)) #f '(#t #t #t #t #t))
;x=#t acc=#f
;x=#t acc=#f

;(foldl (λ (x acc) (+ x acc)) 0 '(1 2 3 4 5))
;x=1 acc=0
;acc=1

(define (sort-list xs)
  (λ (p) (sort xs p))
  )

(equal?
 ((sort-list '("one" "two" "0" "five" "" "one hundred" "onehundred"))
 (λ (x y) (< (string-length x) (string-length y))))
 '("" "0" "one" "two" "five" "onehundred" "one hundred")
 )
