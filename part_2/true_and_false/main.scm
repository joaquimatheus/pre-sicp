(load "simply.scm")

(define (greet name)
  (if (equal? (first name) 'professor)
    (se '(i hope i am not brothering you) 'professor (last name))
    (se '(good to see you) (first name))))

(greet '(math wright))
(greet '(professor harold abelson))

(if #t (+ 4 5 ) (* 2 7))
(if #t (* 2 7) (+ 4 5))

; predicates

(member? 'mick '(dave dee dozy beaky mick and tich))
(member? 'mick '(john paul george ringo))
(member? 'mick '(john paul george ringo))

(member? 'y 'truly)

(= 3 4)

(= 67 67)

(> 98 97)

(before? 'zorn 'coleman)

(before? 'pete 'ringo)

(empty? '(abbey road))

(empty? '())

(empty? 'h1)

(empty? (bf (bf 'h1)))

(empty? "")

(number? 'three)

(number? 74)

(boolean? #f)

(boolean? '(the beatles))

(boolean? 234)

(boolean? #t)

(word? 'flynng)

(word? '(dig it))

(word? 87)

(sentence? 'wait)

(sentence? '(what goes on))

(define (vowel? letter)
  (member? letter 'aeiou))

(define (positive? number)
  (> number 0))

(define (abs num)
  (if (< num 0)
    (- num)
    num))

(define (divisible? big little)
  (= (remainder big little) 0))

(define (buzz num)
  (if (or (divisible? num 7) (member? 7 num))
    'buzz
     num))

(plural 'beatle)

(define (plural wd)
  (word wd 's))

(plural 'computer)

(plural 'fly)

(define (plural wd)
  (if (equal? (last wd) 'y)
    (word (bl wd) 'ies)
    (word wd 's)))

(define (devisible? big small)
  (= (remainder big small) 0))

(define (num-divisible-by-4? x)
  (and (number? x) (divisible? x 4)))

(num-divisible-by-4? 'a)

(num-divisible-by-4? 6)

(num-divisible-by-4? 'aardvark 4)

(define (integer-quotient big little)
  (if (divisible? big little)
    (/ big little)
     #f))

(define (integer-quotient big little)
  (and (divisible? big little)
       (/ big little)))

(define (roman-value letter)
    (if (equal? letter 'i)
      1
      (if (equal? letter 'v)
        5
        (if (equal? letter 'x)
          10
          (if (equal? letter 'l)
            50
            (if (equal? letter 'c)
              100
              (if (equal? letter 'd)
                500
                (if (equal? letter 'n)
                  1000
                  'huh?))))))))

(define (roman-value letter)
  (cond ((equal? letter 'i) 1)
        ((equal? letter 'v) 5)
        ((equal? letter 'x) 10)
        ((equal? letter 'l) 50)
        ((equal? letter 'c) 100)
        ((equal? letter 'd) 500)
        ((equal? letter 'm) 1000)
        (else 'huh?)))

(define (truefalse value)
  (cond (value 'true)
        (else 'false)))

(cond ((number? (first sent))
       ((empty? sent) ...)))

(define (greet name)
  (if (equal? (first name) 'professor)
    (se '(pleased to meet you)
        'professor
        (last name)
        '(-- how are you?))
    (se '(pleased to meet you)
        (first name)
        '(-- how are you?))))
