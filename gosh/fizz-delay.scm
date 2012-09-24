#!/usr/bin/env gosh

(define (main args)
(define (fizzbuzz-from n)
 (cons (cond ((zero? (modulo n 15 )) "FizzBuzz")
        ((zero? (modulo n 5) "buzz"))
        ((zero? (modulo n 3) "fizz"))
        (else n))
  (delay (fizzbuzz-from (+ n 1))))
(define fizzbuzz-list (fizzbuzz-from 1))
 (print 100)
 0)
