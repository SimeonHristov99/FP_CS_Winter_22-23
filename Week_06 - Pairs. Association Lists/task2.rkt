#lang racket

(define (replace xs ps)
  (map (λ (x)
         (let
             ([res-assoc (assoc x ps)])
           (if (pair? res-assoc)
                  (cdr res-assoc)
                  x
                  ))
           )
          xs)
  )

(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))
