(load "simply.scm")

; 8.1  What does Scheme return as the value of each of the following expressions? Figure it out for yourself before you try it on the computer.

(define (vowel? x) (member? x '(a e i o u)))

(every last '(algebra purple spaghetti tomato gnu))

(keep number? '(one two three four))

(accumulate * '(6 7 13 0 9 42 17))

(member? 'h (keep vowel? '(t h r o at)))

(every square (keep even? '(87 4 7 12 9 5)))

(define (vowel? letter) (member? letter '(a e i o u)))

(accumulate word (keep vowel? (every first '(and i have love her))))

((repeated square 0) 25)

(every (repeated bl 2) '(good day sunshine))

;8.2  Fill in the blanks in the following Scheme interactions:

(keep vowel? 'birthday)

(every first '(golden slumbers))

(first '(golden slumbers))

(every last '(little child))

(keep + '(2 3 4 5))

(accumulate + '(2 3 4 5))

; the argument is a number and return true or false if the argument is even
(define (f a)
  (keep even? a))

(define (g b)
  (every b '(blue jay way)))

(define (i e)
  (/ (accumulate + e) (count e)))

(i '(20 30 40))

(accumulate + '(20 30 40))

(count '(20 30 40))
