#!/usr/bin/env gosh
; -*- coding:utf-8 -*-
; 未完成
(define (main args)
 (define (length lst)
   (cond [(null? lst) #f]
         [else 1] ) )
 (print (length '(1 2 3 4)))
 (print (length '()))
 0)
