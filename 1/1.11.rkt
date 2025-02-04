#lang racket

(define (f n)
    (cond   ((< n 3) n)
            (else (+ (f (- n 1))
                     (f (- n 2))
                     (f (- n 3))))))

(f 4)
(f 5)
(f 6)


(define (f2 n)
    (define (f-iter a b c count)
        (if (= count 0)
            c
            (f-iter (+ a b c) a b (- count 1))))
    (f-iter 2 1 0 n))

(f2 4)
(f2 5)
(f2 6)