(load "simply.scm")

; quadratic formula

(define (roots a b c)
  (se (/ (+ (- b) (sqrt (- (* b b) (* 4 a c))))))

(define (f x)
  (g x 6)))

(define (g x y)
  (+ x y))

(define song '(i am the walrus))

(define pi 3.141592654)

(define (roots a b c)
  (se (/ (+ (- b) (sqrt (- (* b b) (* 4 a c))))
         (* 2 a))
      (/ (- (- b) (sqrt (- (* b b) (* 4 a c))))
         (* 2 a))))

(define (roots a b c)
  (roots1 a b c (sqrt (- (* b b) (* 4 a c )))))

(define (roots1 a b c discriminant)
  (se (/ (+ (- b) discriminant) (* 2 a))
      (/ (- (- b) discriminant) (* 2 a))))

(define (roots a b c)
  (let ((discriminant (sqrt (- (* b b) (* 4 a c)))))
    (se (/ (+ (- b) discriminant) (* 2 a))
        (/ (- (- b) discriminant) (* 2 a)))))

(define (roots a b c)
  (let ((discriminant (sqrt (- (* b b) (* 4 a c))))
        (minus-b (- b))
        (two-a (* 2 a)))
    (se (/ (+ minus-b discriminant) two-a)
        (/ (- minus-b discriminant) two-a))))

(let ((a (+ 4 7))
      (b (* a 5)))
  (+ a b))

(define (helper a b)
  (+ a b))

(let ((a (+ 4 7)))
  (let ((b (* a 5)))
    (+ a b)))
