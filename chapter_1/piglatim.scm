;;; load the libs
(load "simply.scm")

(define (piglatim palavra)
  (if (member? (first palavra) 'aeiou)
    (word palavra 'ay)
    (piglatim (word (butfirst palavra) (first palavra)))))

(piglatim 'porco)
(piglatim 'aviao)
(piglatim 'chato)
(piglatim 'elefante)
(piglatim 'spaghetti)
