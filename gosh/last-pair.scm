#!/usr/bin/env gosh
; -*- coding:utf-8 -*-

(define (main args)
 ;(define a (list 1 2 3))
 (define (last-pair lst)
   (if (pair? (cdr lst))
   (last-pair (cdr lst)) lst)
   )
 (print (last-pair '(1 2 3 4)))
 (print (last-pair '(1 2 . 4)))
 (print (last-pair '(1)))
 0)
