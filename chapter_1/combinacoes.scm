;;; carrega libs
(load "simply.scm")

(define (combinacoes tamanho conjunto)
  (cond ((= tamanho 0) '(()))
        ((empty? conjunto) '())
        (else (append (prepend-every (first conjunto)
                                     (combinacoes (- tamanho 1)
                                                  (butfirst conjunto)))
                      (combinacoes tamanho (butfirst conjunto))))))

(define (prepend-every item lst)
  (map (lambda (escolha) (se item escolha)) lst))

(combinacoes 2 '(joao maria luiz renata antonio juliana))

(combinacoes 3 '(joao maria luiz renata antonio juliana))

(combinacoes 4 '(joao maria luiz renata antonio juliana))

