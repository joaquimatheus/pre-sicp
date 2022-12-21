(load "simply.scm")

(define (menu opcoes)
  (if (null? opcoes)
    '(())
    (let ((smaller (menu (cdr opcoes))))
      (reduce append
              (map (lambda (item) (prepend-every item smaller))
                   (car opcoes))))))

(define (prepend-every item lst)
  (map (lambda (opcao) (se item opcao)) lst))

(menu '())

(menu '(
        (baunilha (chocolate amargo) (chocolate branco) morango)
        ))

(menu '(
        (baunilha (chocolate amargo) (chocolate branco) morango)
        (copo casquinha)
        ))

(menu '(
        (baunilha (chocolate amargo) (chocolate branco) morango)
        (copo casquinha)
        (pequeno media grande)
        ))

(menu '(
        (baunilha (chocolate amargo) (chocolate branco) morango)
        (copo casquinha)
        (pequeno media grande)
        (gelado frio fresco)
        ))
