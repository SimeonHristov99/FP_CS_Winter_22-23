#lang racket

(define (get-missing-length xss)
  (define (helper lens)
    (let ([diff (-
                 (apply + (range (first lens) (add1 (last lens))))
                 (apply + lens)
                 )])
      (if (zero? diff)
          (add1 (last lens))
          diff
          ))
    )
  (if (or (null? xss) (ormap null? xss))
    (error "Empty list")
    (helper (sort (map length xss) <))
    )
  )

(get-missing-length '((1 2) (4 5 1 1) (1) (5 6 7 8 9))) ; → 3
(get-missing-length '(("a", "a", "a") ("a", "a") ("a", "a", "a", "a") ("a") ("a", "a", "a", "a", "a", "a"))) ;→ 5
