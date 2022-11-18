#lang racket

; Define a procedure that takes a matrix xss,
; and returns a modified version of it modified-xss
; in which if a row in xss has a zero then the whole
; row in modified-xss contains only zeros.

(define (zero-rows xss)
  (map (λ (xs)
         (if (list? (member 0 xs))
             (make-list (length xs) 0) ;(map (λ (x) 0) xs)
             xs
             )
         ) xss)
  )

(equal? (zero-rows '((1 2 0)
                     (3 4 1)
                     (0 5 7)
                     (4 2 4)))
        '((0 0 0)
          (3 4 1)
          (0 0 0)
          (4 2 4)))
