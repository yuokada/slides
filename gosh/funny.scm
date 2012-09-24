#!/usr/bin/env gosh
; -*- coding:utf-8 -*-

(define (main args)
 (define (greater x y )
    (if (> x y) x y))
 (print (fold greater 0 (list 7 82 4 5 77)))
 ;(setq a (list 1 2 3))
 (print "hello ")
 0)
