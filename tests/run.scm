;;; run.scm -*- mode: scheme; geiser-scheme-implementation: chicken -*-

(use tween test)

(test "memoized factorial should work" 3628800 (factorial 10))
(test "limit-Decimal works" 1.0 (limit-decimal 4 0.99999998 0.0001))

;; Linear ease

(test-group
 "Linear Ease In"
 (test "Begin" 0.0 (tween linear-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (tween linear-ease 'in 0.0 10.0 1.0))
 (test "Middle" 5.0 (tween linear-ease 'in 0.0 10.0 0.5)))

(test-group
 "Linear Ease Out"
 (test "Begin" 0.0 (tween linear-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (tween linear-ease 'out 0.0 10.0 1))
 (test "Middle" 5.0 (tween linear-ease 'out 0.0 10.0 0.5)))

(test-group
 "Linear Ease InOut"
 (test "Begin" 0.0 (tween linear-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (tween linear-ease 'inout 0.0 10.0 1))
 (test "Middle" 5.0 (tween linear-ease 'inout 0.0 10.0 0.5)))

;; Quadratic ease
(test-group
 "Quadratic Ease In"
 (test "Begin" 0.0 (tween quadratic-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (tween quadratic-ease 'in 0.0 10.0 1))
 (test "Middle" 2.5 (tween quadratic-ease 'in 0.0 10.0 0.5)))

(test-group
 "Quadratic Ease Out"
 (test "Begin" 0.0 (tween quadratic-ease 'out 0.0 10.0 0.0))
 (test "Middle" 10.0 (tween quadratic-ease 'out 0.0 10.0 1))
 (test "End" 7.5 (tween quadratic-ease 'out 0.0 10.0 0.5)))

(test-group
 "Quadratic Ease InOut"
 (test "Begin" 0.0 (tween quadratic-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (tween quadratic-ease 'inout 0.0 10.0 1))
 (test "Middle" 5.0 (tween quadratic-ease 'inout 0.0 10.0 0.5)))

;; Cubic ease

(test-group
 "Cubic Ease In"
 (test "Begin" 0.0 (tween cubic-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (tween cubic-ease 'in 0.0 10.0 1))
 (test "Middle" 1.25 (tween cubic-ease 'in 0.0 10.0 0.5)))

(test-group
 "Cubic Ease Out"
 (test "Begin" 0.0 (tween cubic-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (tween cubic-ease 'out 0.0 10.0 1))
 (test "Middle" 8.75 (tween cubic-ease 'out 0.0 10.0 0.5)))

(test-group
 "Cubic Ease InOut"
 (test "Begin" 0.0 (tween cubic-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (tween cubic-ease 'inout 0.0 10.0 1))
 (test "Middle" 5.0 (tween cubic-ease 'inout 0.0 10.0 0.5)))

;; Quartic ease
 
(test-group
 "Quartic Ease In"
 (test "Begin" 0.0 (tween quartic-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (tween quartic-ease 'in 0.0 10.0 1))
 (test "Middle" 0.625 (tween quartic-ease 'in 0.0 10.0 0.5)))

(test-group
 "Quartic Ease Out"
 (test "Begin" 0.0 (tween quartic-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (tween quartic-ease 'out 0.0 10.0 1))
 (test "Middle" 9.375 (tween quartic-ease 'out 0.0 10.0 0.5)))

(test-group
 "Quartic Ease InOut"
 (test "Begin" 0.0 (tween quartic-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (tween quartic-ease 'inout 0.0 10.0 1))
 (test "Middle" 5.0 (tween quartic-ease 'inout 0.0 10.0 0.5)))

;; Quintic ease
 
(test-group
 "Quintic Ease In"
 (test "Begin" 0.0 (tween quintic-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (tween quintic-ease 'in 0.0 10.0 1))
 (test "Middle" 0.3125 (tween quintic-ease 'in 0.0 10.0 0.5)))

(test-group
 "Quintic Ease Out"
 (test "Begin" 0.0 (tween quintic-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (tween quintic-ease 'out 0.0 10.0 1))
 (test "Middle" 9.6875 (tween quintic-ease 'out 0.0 10.0 0.5)))

(test-group
 "Quintic Ease InOut"
 (test "Begin" 0.0 (tween quintic-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (tween quintic-ease 'inout 0.0 10.0 1))
 (test "Middle" 5.0 (tween quintic-ease 'inout 0.0 10.0 0.5)))

;; Sinusoidal ease
 
(test-group
 "Sinusoidal Ease In"
 (test "Begin" 0.0 (tween sinusoidal-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween sinusoidal-ease 'in 0.0 10.0 1) 0.00001))
 (test "Middle" 2.9289 (limit-decimal 4 (tween sinusoidal-ease 'in 0.0 10.0 0.5) 0.00001)))

(test-group
 "Sinusoidal Ease Out"
 (test "Begin" 0.0 (tween sinusoidal-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween sinusoidal-ease 'out 0.0 10.0 1) 0.00001))
 (test "Middle" 7.0710 (limit-decimal 4 (tween sinusoidal-ease 'out 0.0 10.0 0.5) 0.00001)))

(test-group
 "Sinusoidal Ease InOut"
 (test "Begin" 0.0 (tween sinusoidal-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween sinusoidal-ease 'inout 0.0 10.0 1) 0.00001))
 (test "Middle" 5.0 (limit-decimal 4 (tween sinusoidal-ease 'inout 0.0 10.0 0.5) 0.00001)))

;; Exponential ease
 
(test-group
 "Exponential Ease In"
 (test "Begin" 0.0 (tween exponential-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween exponential-ease 'in 0.0 10.0 1) 0.00001))
 (test "Middle" 0.3125 (limit-decimal 4 (tween exponential-ease 'in 0.0 10.0 0.5) 0.00001)))

(test-group
 "Exponential Ease Out"
 (test "Begin" 0.0 (tween exponential-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween exponential-ease 'out 0.0 10.0 1) 0.00001))
 (test "Middle" 9.6875 (limit-decimal 4 (tween exponential-ease 'out 0.0 10.0 0.5) 0.00001)))

(test-group
 "Exponential Ease InOut"
 (test "Begin" 0.0 (tween exponential-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween exponential-ease 'inout 0.0 10.0 1) 0.00001))
 (test "Middle" 5.0 (limit-decimal 4 (tween exponential-ease 'inout 0.0 10.0 0.5) 0.00001)))

;; Circular ease
 
(test-group
 "Circular Ease In"
 (test "Begin" 0.0 (tween circular-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween circular-ease 'in 0.0 10.0 1) 0.00001))
 (test "Middle" 1.3397 (limit-decimal 4 (tween circular-ease 'in 0.0 10.0 0.5) 0.00001)))

(test-group
 "Circular Ease Out"
 (test "Begin" 0.0 (tween circular-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween circular-ease 'out 0.0 10.0 1) 0.00001))
 (test "Middle" 8.6602 (limit-decimal 4 (tween circular-ease 'out 0.0 10.0 0.5) 0.00001)))

(test-group
 "Circular Ease InOut"
 (test "Begin" 0.0 (tween circular-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween circular-ease 'inout 0.0 10.0 1) 0.00001))
 (test "Middle" 5.0 (limit-decimal 4 (tween circular-ease 'inout 0.0 10.0 0.5) 0.00001)))

;; Elastic ease
 
(test-group
 "Elastic Ease In"
 (test "Begin" 0.0 (tween elastic-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween elastic-ease 'in 0.0 10.0 1) 0.00001))
 (test "Middle" 0.0 (limit-decimal 4 (tween elastic-ease 'in 0.0 10.0 0.5) 0.00001)))

(test-group
 "Elastic Ease Out"
 (test "Begin" 0.0 (tween elastic-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween elastic-ease 'out 0.0 10.0 1) 0.00001))
 (test "Middle" 10.0 (limit-decimal 4 (tween elastic-ease 'out 0.0 10.0 0.5) 0.00001)))

(test-group
 "Elastic Ease InOut"
 (test "Begin" 0.0 (tween elastic-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween elastic-ease 'inout 0.0 10.0 1) 0.00001))
 (test "Middle" 5.0 (limit-decimal 4 (tween elastic-ease 'inout 0.0 10.0 0.5) 0.00001)))

;; Back ease
 
(test-group
 "Back Ease In"
 (test "Begin" 0.0 (tween back-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween back-ease 'in 0.0 10.0 1) 0.00001))
 (test "Middle" -0.8769 (limit-decimal 4 (tween back-ease 'in 0.0 10.0 0.5) 0.00001)))

(test-group
 "Back Ease Out"
 (test "Begin" 0.0 (tween back-ease 'out 0.0 10.0 0.0))
 (test "End" 10.8769 (limit-decimal 4 (tween back-ease 'out 0.0 10.8769 1) 0.00001))
 (test "Middle" 10.8769 (limit-decimal 4 (tween back-ease 'out 0.0 10.0 0.5) 0.00001)))

(test-group
 "Back Ease InOut"
 (test "Begin" 0.0 (tween back-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween back-ease 'inout 0.0 10.0 1) 0.00001))
 (test "Middle" 5.0 (limit-decimal 4 (tween back-ease 'inout 0.0 10.0 0.5) 0.00001)))

;; Bounce ease
 
(test-group
 "Bounce Ease In"
 (test "Begin" 0.0 (tween bounce-ease 'in 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween bounce-ease 'in 0.0 10.0 1) 0.00001))
 (test "Middle" 2.3437 (limit-decimal 4 (tween bounce-ease 'in 0.0 10.0 0.5) 0.00001)))

(test-group
 "Bounce Ease Out"
 (test "Begin" 0.0 (tween bounce-ease 'out 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween bounce-ease 'out 0.0 10.0 1) 0.00001))
 (test "Middle" 7.6562 (limit-decimal 4 (tween bounce-ease 'out 0.0 10.0 0.5) 0.00001)))

(test-group
 "Bounce Ease InOut"
 (test "Begin" 0.0 (tween bounce-ease 'inout 0.0 10.0 0.0))
 (test "End" 10.0 (limit-decimal 4 (tween bounce-ease 'inout 0.0 10.0 1) 0.00001))
 (test "Middle" 5.0 (limit-decimal 4 (tween bounce-ease 'inout 0.0 10.0 0.5) 0.00001)))

;; Selectors

(define test-set (list->vector '(0 1 2 3 4 5 6 7 8 9 10.0)))

;; Linear select

(test-group
 "Linear Select"
 (test "Begin" 0.0 (linear-select test-set 0.0))
 (test "Middle" 5.0 (linear-select test-set 0.5))
 (test "End" 10.0 (linear-select test-set 1)))

;; Bezier select

(test-group
 "Bezier Select"
 (test "Begin" 0.0 (bezier-select test-set 0.0))
 (test "Middle" 5.0 (bezier-select test-set 0.5))
 (test "End" 10.0 (bezier-select test-set 1)))

;; Catmullrom select

(test-group
 "Catmull-Rom Select"
 (test "Begin" 0.0 (catmullrom-select test-set 0.0))
 (test "Middle" 5.0 (catmullrom-select test-set 0.5))
 (test "End" 10.0 (catmullrom-select test-set 1)))

;; Test everything!

(define test-percents '(0.0 0.1 0.2 0.3 0.4 0.5 0.66 0.75 0.95 1.0))
(define test-eases (list linear-ease quadratic-ease cubic-ease quartic-ease
                         quintic-ease sinusoidal-ease exponential-ease
                         circular-ease elastic-ease back-ease bounce-ease))

(define (test-ease ease start stop)
  (let ((real-ease (eval ease)))
    (test-group
     (string-append "Automated Easement Test for " (->string ease))
     (map (lambda (p)
            (let ((sp (->string p)))
              (test-assert (string-append "In " sp) (tween real-ease 'in start stop p))
              (test-assert (string-append "Out " sp) (tween real-ease 'out start stop p))
              (test-assert (string-append "InOut" sp) (tween real-ease 'inout start stop p))))
          test-percents))))

(define (test-select selector values)
  (let ((real-selector (eval selector)))
    (test-group
     (string-append "Autometed Selector Test for " (->string selector))
     (map (lambda (p)
            (test-assert (string-append "Interpolate " (->string p)) (interpolate real-selector values p)))
          test-percents))))

(map (cut test-ease <> 0.0 10.0) 
     '(linear-ease quadratic-ease cubic-ease quartic-ease quintic-ease sinusoidal-ease exponential-ease circular-ease elastic-ease back-ease bounce-ease))

(let ((v '(0 1 2 3 4 5 10 15 20 25 30 35 40 45 50)))
  (map (cut test-select <> (list->vector v))
       '(linear-select bezier-select catmullrom-select)))

(test-exit)
