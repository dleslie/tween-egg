Tween Egg
==========

Provides a (loose) port of Tween.js for Chicken Scheme. Other Schemes may work, though perhaps with some minor alterations.

General Functions
----------

**(factorial n)**

Memoized implementation of the factorial method. Provides O(n) computation, albeit with an O(1) average case. Requires O(n) memory.

You may reset the memory by whiping out the cache: `(set! factorial* (make-vector 1 1))`

**(limit-decimal count value #!optional (epsilon 0))**

Sometimes its useful to truncate the number of decimal places a floating point number is exact to. Sometimes it's also useful to do so after applying an epsilon value to smudge for floating point computation errors. This function can perform both operations.

Note that it is *not* a function to force a number to a particular number of significant digits.

**(tween easing-function direction start stop percent)**

Given an `easing-function` and a `direction`, this produces a value between `start` and `stop` that is representative of the provided `percent`.

`direction` may be one of the following symbols:
* in
* out
* inout

`percent` must be a value between 0.0 and 1.0.

`start` and `stop` must be numbers.

`easing-function` be of the form `direction -> percent -> percent`.

Various easing functions are provided by this egg, see below.

**(interpolate selector-function value-vector percent)**

Given a `selector-function` this produces a value within the range of values defined in `value-vector` that is representative of the provided `percent`.

`value-vector` must be a vector of numbers.

`percent` must be a value between 0.0 and 1.0.

`selector-function` must be of the form `value-vector -> percent -> number`

Various selector functions are provided by this egg, see below.

Easing Functions
----------

The following easing functions are available:

* linear-ease 
* quadratic-ease 
* cubic-ease 
* quartic-ease 
* quintic-ease 
* sinusoidal-ease 
* exponential-ease 
* circular-ease 
* elastic-ease 
* back-ease 
* bounce-ease

Selector Functions
----------

The following interpolation functions are available:

* linear-select
* bezier-select
* catmullrom-select

Example
----------

```scheme
(define test-percents '(0.0 0.1 0.2 0.3 0.4 0.5 0.66 0.75 0.95 1.0))

(define (test-ease ease start stop)
  (let ((in '())
        (out '())
        (inout '()))
    (map (lambda (p)
           (set! in (cons (limit-decimal 2 (tween ease 'in start stop p)) in))
           (set! out (cons (limit-decimal 2 (tween ease 'out start stop p)) out))
           (set! inout (cons (limit-decimal 2 (tween ease 'inout start stop p)) inout))
           )
         (reverse test-percents))
    `((in . ,in) (out . ,out) (inout . ,inout))))

;; Tests tweens for values between 0 and 10
(map (lambda (e) (display (list e 0 10 (test-ease e 0 10))) (newline)) 
     (list linear-ease quadratic-ease cubic-ease quartic-ease quintic-ease sinusoidal-ease exponential-ease circular-ease elastic-ease back-ease bounce-ease))

;; Tests interpolation for values in the given set
(let ((v '(0 1 2 3 4 5 10 15 20 25 30 35 40 45 50)))
  (map (lambda (s) (display (list s v (test-select s (list->vector v)))))
       (list linear-select bezier-select catmullrom-select)))

;; Tween test produces:
(#<procedure (tween#linear-ease direction118 percent119)> 0 10 
             ((in 0.0 1.0 2.0 3.0 4.0 5.0 6.6 7.5 9.5 10.0) 
              (out 0.0 1.0 2.0 3.0 4.0 5.0 6.6 7.5 9.5 10.0) 
              (inout 0.0 1.0 2.0 3.0 4.0 5.0 6.6 7.5 9.5 10.0)))
(#<procedure (tween#quadratic-ease direction123 percent124)> 0 10 
             ((in 0.0 0.1 0.4 0.89 1.6 2.5 4.35 5.62 9.02 10.0) 
              (out 0.0 1.89 3.6 5.09 6.4 7.5 8.84 9.37 9.97 10.0) 
              (inout 0.0 0.05 0.2 0.44 0.8 5.0 7.68 8.75 9.94 10.0)))
(#<procedure (tween#cubic-ease direction138 percent139)> 0 10 
             ((in 0.0 0.01 0.08 0.26 0.64 1.25 2.87 4.21 8.57 10.0) 
              (out 0.0 2.7 4.87 6.57 7.83 8.75 9.6 9.84 9.99 10.0) 
              (inout 0.0 0.04 0.32 1.07 2.56 5.0 8.42 9.37 9.99 10.0)))
(#<procedure (tween#quartic-ease direction154 percent155)> 0 10 
             ((in 0.0 0.0 0.01 0.08 0.25 0.62 1.89 3.16 8.14 10.0) 
              (out 0.0 3.43 5.9 7.59 8.7 9.37 9.86 9.96 9.99 10.0) 
              (inout 0.0 0.0 0.12 0.64 2.04 5.0 8.93 9.68 9.99 10.0)))
(#<procedure (tween#quintic-ease direction170 percent171)> 0 10 
             ((in 0.0 0.0 0.0 0.02 0.1 0.31 1.25 2.37 7.73 10.0) 
              (out 0.0 4.09 6.72 8.31 9.22 9.68 9.95 9.99 9.99 10.0) 
              (inout 0.0 0.0 0.05 0.38 1.63 5.0 9.27 9.84 9.99 10.0)))
(#<procedure (tween#sinusoidal-ease direction186 percent187)> 0 10 
             ((in 0.0 0.12 0.48 1.08 1.9 2.92 4.9 6.17 9.21 9.99) 
              (out 0.0 1.56 3.09 4.53 5.87 7.07 8.6 9.23 9.96 10.0) 
              (inout 0.0 0.24 0.95 2.06 3.45 4.99 7.4 8.53 9.93 10.0)))
(#<procedure (tween#exponential-ease direction201 percent202)> 0 10 
             ((in 0 0.01 0.03 0.07 0.15 0.31 0.94 1.76 7.07 10.0) 
              (out 0.0 5.0 7.5 8.75 9.37 9.68 9.89 9.94 9.98 10) 
              (inout 0 0.01 0.07 0.31 1.25 5.0 9.45 9.84 9.99 10)))
(#<procedure (tween#circular-ease direction217 percent218)> 0 10 
             ((in 0.0 0.05 0.2 0.46 0.83 1.33 2.48 3.38 6.87 10.0)
              (out 0.0 4.35 5.99 7.14 8.0 8.66 9.4 9.68 9.98 10.0)
              (inout 0.0 0.1 0.41 0.99 2.0 5.0 8.66 9.33 9.97 10.0)))
(#<procedure (tween#elastic-ease direction236 percent237 . tmp235238)> 0 10 
             ((in 0 0.0 0.03 0 0 0.0 0.55 0 5.0 10)
              (out 0 9.99 10 10 9.37 9.99 10 9.96 10 10)
              (inout 0 0.01 0 0.31 0 9.0 10 10 10 10)))
(#<procedure (tween#back-ease direction280 percent281 . tmp279282)> 0 10 
             ((in 0.0 0 0 0 0 0 0.35 1.82 7.8 9.99)
              (out 0.0 4.08 7.05 9.07 10 10 10 10 10 10.0)
              (inout 0.0 0 0 0 0.89 5.0 10 10 10 10.0)))
(#<procedure (tween#bounce-ease direction308 percent309)> 0 10 
             ((in 0.0 0.11 0.6 0.69 2.27 2.34 1.25 5.27 9.81 10.0) 
              (out 0.0 0.75 3.02 6.8 9.09 7.65 8.49 9.72 9.84 10.0) 
              (inout 0.0 0.3 1.13 0.45 3.48 5.0 8.87 8.82 9.94 10.0)))

;; Interpolation test produces:
(#<procedure (tween#linear-select v50 p51)> 
             (0 1 2 3 4 5 10 15 20 25 30 35 40 45 50) 
             (0.0 1.4 2.8 4.2 8.0 15.0 26.2 32.5 46.49 50.0))
(#<procedure (tween#bezier-select v67 p68)> 
             (0 1 2 3 4 5 10 15 20 25 30 35 40 45 50) 
             (0.0 1.4 3.03 5.61 9.8 15.5 26.22 32.5 46.5 50.0))
(#<procedure (tween#catmullrom-select v83 p84)> 
             (0 1 2 3 4 5 10 15 20 25 30 35 40 45 50) 
             (0.0 1.72 4.08 4.37 11.4 15.0 26.77 35.0 47.1 50.0))
```

License
----------
    
    Copyright 2012 Daniel J. Leslie. All rights reserved.
    
    The contact email address for Daniel J. Leslie is dan@ironoxide.ca
    
    Redistribution and use in source and binary forms, with or without modification, are
    permitted provided that the following conditions are met:
    
       1. Redistributions of source code must retain the above copyright notice, this list of
          conditions and the following disclaimer.
    
       2. Redistributions in binary form must reproduce the above copyright notice, this list
          of conditions and the following disclaimer in the documentation and/or other materials
          provided with the distribution.
    
    THIS SOFTWARE IS PROVIDED BY DANIEL J. LESLIE ''AS IS'' AND ANY EXPRESS OR IMPLIED
    WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
    FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL DANIEL J. LESLIE OR
    CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
    ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
    ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    
    The views and conclusions contained in the software and documentation are those of the
    authors and should not be interpreted as representing official policies, either expressed
    or implied, of Daniel J. Leslie.
