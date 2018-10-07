;;; easing.scm -*- mode: scheme; geiser-scheme-implementation: chicken -*-

(module 
 tween *
 (import (except scheme rationalize))
 (cond-expand
       (chicken-4 (import chicken))
       (chicken-5 (import (chicken base))))

 (define factorial* (make-vector 1 1))
 (define (factorial n)
   (assert (and (exact? n)
                (vector? factorial*)))
   (when (>= n (vector-length factorial*))
         (set! factorial* (vector-resize factorial* (+ n 1) #f)))
   (when (and (<= 1 n) (not (vector-ref factorial* n)))
         (set! (vector-ref factorial* n) (* n (factorial (- n 1)))))
   (if (>= 1 n) 1
       (vector-ref factorial* n)))

 (define (rationalize count value #!optional (epsilon 0))
   (let ((f (expt 10 count))
         (n (+ value epsilon)))
     (+ (truncate n)
        (/ (truncate (* (- n (truncate n)) f)) f))))

 (define (tween easing-function direction start stop percent)
   (assert (and (<= 0 percent) (>= 1 percent)
                (number? start) (number? stop)))
   (+ (* (easing-function direction percent) (- stop start)) start))

 (define (interpolate selector-function value-vector percent)
   (assert (and (<= 0 percent) (>= 1 percent)
                (vector? value-vector)))
   (selector-function value-vector percent))

 (include "selectors")
 (include "easing"))
