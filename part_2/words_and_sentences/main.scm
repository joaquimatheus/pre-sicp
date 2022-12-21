; boring exercises
(load "simply.scm")

(sentence 'I '(me mine))

(sentence '() '(is empty))

(word '23 '45)

(se '23 '45)

(bf 'a)

(bf '(aye))

(count (first '(maggie mae)))

(se "" '() "" '())

(count (se "" '() "" '()))

;5.2

(define (f1 qt et) 
  (se (bf qt) (bl et)))

(define (f2 qon qos)
  (se (bf qon) (bl qos) 
      (word (first qon) (last qos))
    ))

(f2 '(a b c) '(d e f))

(define (f3 qon qos)
  (se qon qon))

(f3 '(a b c) '(d e f))

(define (f4 qon qos)
  (word (second qon) (second qos)))


(f4 '(a b c) '(d e f))

(se (word (bl (bl (first ’(make a))))
        (bf (bf (last ’(baseball mitt)))))
    (word (first ’with) (bl (bl (bl (bl ’rigidly))))
        (first ’held) (first (bf ’stitches))))

(se (word (bl (bl ’bring)) ’a (last ’clean))
    (word (bl (last ’(baseball hat))) (last ’for) (bl (bl ’very))
        (last (first ’(sunny days)))))


(butfirst 'ab)

(butfirst '(a))
(butlast '(a))


(first ''banana)

(define (second thing)
  (first (butfirst thing)))

(define (third thing)
  (second (butfirst thing)))

(define (first-two thing)
  (word (first thing) (first (butfirst thing))))

(define (two-first thing thing-two)
  (word (first thing) (first thing-two)))

(define (two-first-sent thing)
  (word 
    (first (first thing)) 
    (first (first (butfirst thing)))
        ))

(first (first (butfirst '(brian epstein))))


(define (sir name)
  (se '(sir) name))

(define (ends thing)
  (word (first thing) (last thing)))

(define (insert-and sent)
  (se (butlast sent) 'and (last sent)))

(define (middle-names name)
  (butfirst (butlast name)))

(middle-names '(john ronald raoul tolkien))
(middle-names '(james paul mccartney))
(middle-names '(bugs bunny))
(middle-names '(peter bliar denis bernad noone))

(define (query sent)
  (se (first (butfirst sent)) (first sent) (butfirst (butfirst sent))))

(query '(you are experienced))
(query '(i should have known better))
