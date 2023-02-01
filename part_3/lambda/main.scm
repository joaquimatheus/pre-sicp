(load "simply.scm" )

(define (add-three number) (+ number 3))

(add-three 20)

(define (add-three-to-each sent)
  (every add-three sent))

(add-three-to-each '(1 9 9 2))

(define (add-three-to-each sent)
  (every (lambda (number) (+ number 3)) sent))

(add-three-to-each '(1 9 9 2))

((lambda (a b) (+ (* 2 a) b)) 5 6)

((lambda (wd) (word (last wd) (first wd))) 'impish)

(every (lambda (wd) (se (first wd) wd (last wd)))
       '(only a northern song))

(keep (lambda (n) (member? 9 n)) '(4 81 909 781 1969 1776))

(accumulate (lambda (this that)
              (if (> (count this) (count that)) this that))
            '(wild honey pie))

(keep (lambda (person) (member? person '(john paul george ringo)))
      '(mick smokey paul diana bill geddy john yoko keith reparata))

(keep (lambda (person) (member? 'e person))
      '(mich smokey paul diana bill geddy john yoko keith reparata))

(define (make-adder num)
  (lambda (x) (+ x num)))

((make-adder 4) 7)

(every (make-adder 6) '(2 4 8))

(define (same-arg-twice fn)
  (lambda (arg) (fn arg arg)))

((same-arg-twice *) 4)

(define (flip fn)
  (lambda (a b) (fn b a)))

((flip se) 'goodbye 'hello)

(define pi 3.141592654)

(define drummer '(ringo starr))

(first drummer)

(define (square x) (* x x))

(define square (lambda (x) (* x x)))

(define square (same-arg-twice *))

(square 7)

(define fourth-power (repeated square 2))

(fourth-power 5)
