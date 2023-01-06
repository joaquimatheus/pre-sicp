(load "simply.scm")

; quadratic formula

(define (roots a b c)
  (se (/ (+ (- b) (sqrt (- (* b b) (* 4 a c))))))
