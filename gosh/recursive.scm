#!/usr/bin/env gosh
; -*- coding:utf-8 -*-

(define (main args)
 (define (copy-list lst)
   (if (pair? lst)
     (cons (car lst) (copy-list (cdr lst)))
     lst))
 (print (copy-list '(1 2 )))
 0)
