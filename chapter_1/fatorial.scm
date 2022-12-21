(load "simply.scm")

(define (fatorial n)
  (if (= n 0)
    1
    (* n (fatorial (- n 1)))))

(fatorial 5)
(fatorial 1000)

(atorial -1)
