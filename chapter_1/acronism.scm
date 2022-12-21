;;; load the lib
(load "simply.scm")

;;; Define the procedure acronim:
(define (acronimo palavras)
    (accumulate word (every first palavras)))

;; tests
(acronimo '(associacao medica brasileira))
(acronimo '(quod erat demonstrandum))
(acronimo '(reduced instruction set computer))

(acronimo '(sociedade brasileira de pediatria))
(acronimo '(structure and interpretation of computer program))

;;; create the second version of acronimo:

(define (acronimo palavras)
    (accumulate word (every first (keep palavra-valida? palavras))))

(define (palavra-valida? palavra)
  (not (member? palavra '(and of de do da))))

(acronimo '(sociedade brasileira de pediatria))
(acronimo '(structure and interpretation of computer programs))
