(load "simply.scm")

(define (two-firsts sent)
  (se (first (first sent))
      (first (last sent))))

(define (three-firsts sent)
  (se (first (first sent))
      (first (first (bf sent)))
      (first (last sent))))

(three-firsts '(james paul mccartney))

(define (first-letters sent)
  (every first sent))

(first-letters '(here comes the sun))

(first-letters '(lucy in the sky with diamonds))

(every last '(while my guitar gently weeps))

(every - '(4 5 7 8 9))

(define (plural noun)
  (if (equal? (last noun) 'y)
    (word (bl noun) 'ies)
    (word noun 's)))

(define (plural noun)
    (if (equal? (last noun) 'y)
      (word (bl noun) 'ies)
      (word noun 's)))

(every plural '(beatle turtle holly kink zombie))

(define (double letter) (word letter letter))

(every double 'girl)

(every square 547)

(define (sent-of-first-two wd)
  (se (first wd) (first (bf wd))))

(every sent-of-first-two '(tell me what you see))

(define (g wd)
  (se (word 'with wd) 'you))

(every g '(in out))

(keep even? '(1 2 3 4 5))

(define (ends-e? word) (equal? (last word) 'e))

(keep ends-e? '(please put the salami above the blue elephant))

(keep number? 'zonk23hey9)

(define (vowel? letter) (member? letter '(a e i o u)))

(keep vowel? 'piggies)

(define (real-word? wd)
  (not (member? wd '(a the an in of and for to with))))

(keep real-word? '(lucy in the sky with diamonds))

(every first (keep real-word? '(lucy in the sky with diamods)))

(accumulate + '(6 3 4 -5 7 8 9))

(accumulate word '(a cl u))

(accumulate max '(128 32 134 136))

(define (hyphenete word1 word2)
  (word word1 '- word2))

(accumulate hyphenete '(ob la di ob la da))

(accumulate + 781)

(accumulate sentence 'colin)

(define (add-numbers sent)
  (accumulate + (keep number? sent)))

(add-numbers '(4 calling birds a 3 french hens 2 turtle doves))

(add-numbers '(1 for the money 2 for the show 3 to get reeadt and 4 to go))

(define (always-one arg)
  1)

(define (count sent)
  (accumulate + (every always-one sent)))

(define (acronym phrase)
  (accumulate word (every first (keep real-word? phrase))))

(acronym '(reduced instruction set computer))

(acronym '(structure and interpretation of computer programs))

(se (if (even? 1) 1 '())
    (if (even? 2) 2 '())
    (if (even? 3) 3 '())
    (if (even? 4) 4 '())
    (if (even? 5) 5 '()))

(accumulate word '(a c l u))

(word 'a (word 'c (word 'l 'u)))

((repeated bf 3) '(she came in through the bathroom window))

((repeated plural 4) 'computer)

((repeated square 2) 3)

(define (double sent)
  (se sent sent))

((repeated double 3) '(banana))

((repeated square 4) 2)

(define (item n sent)
  (first ((repeated bf ( - n 1 )) sent)))

(define (any-numbers? sent)
  (not (empty? (keep number? sent))))

(define (spell-digit digit)
  (item (+ 1 digit)
        '(zero one two three four five six seven eight nine)))

(every spell-digit 1971)

(every (+ 3) '(1 2 3))

(define (beatle-number n)
  (if (or (< n 1) (> n 4))
    '()
    (item n '(john paul george ringo))))

(beatle-number 3)

(beatle-number 1)

(every beatle-number '(2 8 4 0 1))

(se (beatle-number 2) (beatle-number 8) (beatle-number 4)
    (beatle-number 0) (beatle-number 1))

(se 'paul '() 'ringo '() 'john)

(every bf '(i need you))

(every first '(one two three four))

(first '(one two three four))

(accumulate hyphenete '(ob la di ob la da))

(every (quotient 6) '(1 2 3))

(accumulate se '(one-word))

(accumulate max '())

((repeated bf 3) 987654)
