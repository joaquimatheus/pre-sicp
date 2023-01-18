(load "simply.scm")

; 8.4  Write a procedure choose-beatles that takes a predicate function as its 
;argument and returns a sentence of just those Beatles (John, Paul, George, and Ringo) 
;that satisfy the predicate. For example:

(define (choose-beatles predicate)
  (keep predicate '(John Paul George Ringo)))


(define (ends-vowel? wd) (vowel? (last wd)))
(define (even-count? wd) (even? (count wd)))

(choose-beatles ends-vowel?)
(choose-beatles even-count?)

;8.5  Write a procedure transform-beatles that takes a procedure as an argument, 
;applies it to each of the Beatles, and returns the results in a sentence: 

(define (amazify name)
  (word 'the-amazing- name))

(define (transform-beatles proc)
  (every proc '(John Paul George Ringo)))

(transform-beatles amazify)

; 8.6  When you're talking to someone over a noisy radio connection, 
;you sometimes have to spell out a word in order to get the other person 
;to understand it. But names of letters aren't that easy to understand either, 
;so there's a standard code in which each letter is represented by a particular 
;word that starts with the letter. For example, instead of "B" you say "bravo." 

(define (phonetic letter)
  (cond 
    ((member? letter 'Aa) 'Alpha)
    ((member? letter 'Bb) 'Bravo)
    ((member? letter 'Cc) 'Charlie)))

(define (words wd)
    (every phonetic wd))
