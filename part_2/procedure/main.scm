(load "simply.scm")

(define (ho-hum x y)
  (+ x (* 2 y)))

(ho-hum 8 12)

(define (yawn x)
  (+ 3 (* x 2)))

(define (three x) 3)


(define (magic n)
  (- (/ 
       (+ (+ (* 3 n) 13)
          (- n 2)
          4)
       3))
)

(define (sphere-volume r)
  (* (/ 4 3) 3.141592654 (* r r r)))

(define (square x)
  (* x x))

(define (triangle-area base height)
  (* 0.5 base height))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (convert-celsius-fahrenheit temp) 
  (+ 32 (* temp (/ 9 5))))

(define (convert-fahrenheit-celsius temp)
  (* (/ 5 9) (- temp 32)))

(define (fourth x)
  (* x x x x))

(define (fourth-square x)
  (* (square x) (square x)))

(define (square-root x)
  (sqrt (square x)))

(define (scientific number exponent)
  (* number (expt 10 exponent)))

(define (discount price porc)
  (- price (* price (/ porc 100))))

(define (tip bill)
  (- (ceiling (* 1.15 bill)) bill))
