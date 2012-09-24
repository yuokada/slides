#!/usr/bin/env gosh
; -*- coding:utf-8 -*-
;
(define (main args)
  (define (list . a)
    (if (null? a) '()
    (map (lambda (x) x) a)
    ))
 (define (rectungle x)
    (if (= x 1) 1
     (* x (rectungle (- x 1)))))
 (define (sum x)
    (if (eq? x 1) 1
    (+ x (sum (- x 1)) )))
 (define (member elm lst . options)
  (let-optionals* options
   (cmp-fn equal?)
  (cond [(null? lst) '()]
        [(eq? elm (car lst)) lst]
        [else (member elm (cdr lst) cmp-fn)])))
 (define (factorial x)
  (if (eq? x 1)
      1
      (* x #?=(factorial (- x 1)) ) ))
 ;(define (distribute elm)
 ; ())
 ;(1 2 0)
 ;()
 (define *inventory* (list 'potion 'potion 'dagger 'cookie 'dagger ))
 (print (factorial 33))
 (print (member 'cookie *inventory*))
 (print (sum 5 ))
 ;(print (rectungle 1000 ))
 (print (list 1 2 0))
 (print (list 0))
 (print (list))
 1)
