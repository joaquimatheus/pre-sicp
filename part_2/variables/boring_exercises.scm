(load "simply.scm")

(define (vowel? x) (member? x '(a e i o u)))

;7.1  The following procedure does some redundant computation. 
(define (gertrude wd)
  (let ((article (if (vowel? (first wd)) 'an 'a)))
    (se article
        wd
        'is
        article
        wd
        'is
        article
        wd)))

(let ((pi 3.14159)
      (pie 'lemon-meringue))
  (se 'pi 'is pi 'but 'pie 'is pie))

