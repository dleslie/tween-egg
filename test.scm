(use tween)

(assert (= 3628800 (factorial 10)))
(assert (= 1.0 (rationalize 4 0.99999998 0.0001)))

;; Linear ease

(assert (= (tween linear-ease 'in 0 10 0) 0))
(assert (= (tween linear-ease 'in 0 10 1) 10))
(assert (= (tween linear-ease 'in 0 10 0.5) 5))

(assert (= (tween linear-ease 'out 0 10 0) 0))
(assert (= (tween linear-ease 'out 0 10 1) 10))
(assert (= (tween linear-ease 'out 0 10 0.5) 5))

(assert (= (tween linear-ease 'inout 0 10 0) 0))
(assert (= (tween linear-ease 'inout 0 10 1) 10))
(assert (= (tween linear-ease 'inout 0 10 0.5) 5))

;; Quadratic ease

(assert (= (tween quadratic-ease 'in 0 10 0) 0))
(assert (= (tween quadratic-ease 'in 0 10 1) 10))
(assert (= (tween quadratic-ease 'in 0 10 0.5) 2.5))

(assert (= (tween quadratic-ease 'out 0 10 0) 0))
(assert (= (tween quadratic-ease 'out 0 10 1) 10))
(assert (= (tween quadratic-ease 'out 0 10 0.5) 7.5))

(assert (= (tween quadratic-ease 'inout 0 10 0) 0))
(assert (= (tween quadratic-ease 'inout 0 10 1) 10))
(assert (= (tween quadratic-ease 'inout 0 10 0.5) 5.0))

;; Cubic ease

(assert (= (tween cubic-ease 'in 0 10 0) 0))
(assert (= (tween cubic-ease 'in 0 10 1) 10))
(assert (= (tween cubic-ease 'in 0 10 0.5) 1.25))

(assert (= (tween cubic-ease 'out 0 10 0) 0))
(assert (= (tween cubic-ease 'out 0 10 1) 10))
(assert (= (tween cubic-ease 'out 0 10 0.5) 8.75))

(assert (= (tween cubic-ease 'inout 0 10 0) 0))
(assert (= (tween cubic-ease 'inout 0 10 1) 10))
(assert (= (tween cubic-ease 'inout 0 10 0.5) 5.0))

;; Quartic ease
 
(assert (= (tween quartic-ease 'in 0 10 0) 0))
(assert (= (tween quartic-ease 'in 0 10 1) 10))
(assert (= (tween quartic-ease 'in 0 10 0.5) 0.625))

(assert (= (tween quartic-ease 'out 0 10 0) 0))
(assert (= (tween quartic-ease 'out 0 10 1) 10))
(assert (= (tween quartic-ease 'out 0 10 0.5) 9.375))

(assert (= (tween quartic-ease 'inout 0 10 0) 0))
(assert (= (tween quartic-ease 'inout 0 10 1) 10))
(assert (= (tween quartic-ease 'inout 0 10 0.5) 5.0))

;; Quintic ease
 
(assert (= (tween quintic-ease 'in 0 10 0) 0))
(assert (= (tween quintic-ease 'in 0 10 1) 10))
(assert (= (tween quintic-ease 'in 0 10 0.5) 0.3125))

(assert (= (tween quintic-ease 'out 0 10 0) 0))
(assert (= (tween quintic-ease 'out 0 10 1) 10))
(assert (= (tween quintic-ease 'out 0 10 0.5) 9.6875))

(assert (= (tween quintic-ease 'inout 0 10 0) 0))
(assert (= (tween quintic-ease 'inout 0 10 1) 10))
(assert (= (tween quintic-ease 'inout 0 10 0.5) 5.0))

;; Sinusoidal ease
 
(assert (= (tween sinusoidal-ease 'in 0 10 0) 0))
(assert (= (rationalize 4 (tween sinusoidal-ease 'in 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween sinusoidal-ease 'in 0 10 0.5) 0.00001) 2.9289))

(assert (= (tween sinusoidal-ease 'out 0 10 0) 0))
(assert (= (rationalize 4 (tween sinusoidal-ease 'out 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween sinusoidal-ease 'out 0 10 0.5) 0.00001) 7.0710))

(assert (= (tween sinusoidal-ease 'inout 0 10 0) 0))
(assert (= (rationalize 4 (tween sinusoidal-ease 'inout 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween sinusoidal-ease 'inout 0 10 0.5) 0.00001) 5.0))

;; Exponential ease
 
(assert (= (tween exponential-ease 'in 0 10 0) 0))
(assert (= (rationalize 4 (tween exponential-ease 'in 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween exponential-ease 'in 0 10 0.5) 0.00001) 0.3125))

(assert (= (tween exponential-ease 'out 0 10 0) 0))
(assert (= (rationalize 4 (tween exponential-ease 'out 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween exponential-ease 'out 0 10 0.5) 0.00001) 9.6875))

(assert (= (tween exponential-ease 'inout 0 10 0) 0))
(assert (= (rationalize 4 (tween exponential-ease 'inout 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween exponential-ease 'inout 0 10 0.5) 0.00001) 5.0))

;; Circular ease
 
(assert (= (tween circular-ease 'in 0 10 0) 0))
(assert (= (rationalize 4 (tween circular-ease 'in 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween circular-ease 'in 0 10 0.5) 0.00001) 1.3397))

(assert (= (tween circular-ease 'out 0 10 0) 0))
(assert (= (rationalize 4 (tween circular-ease 'out 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween circular-ease 'out 0 10 0.5) 0.00001) 8.6602))

(assert (= (tween circular-ease 'inout 0 10 0) 0))
(assert (= (rationalize 4 (tween circular-ease 'inout 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween circular-ease 'inout 0 10 0.5) 0.00001) 5.0))

;; Elastic ease
 
(assert (= (tween elastic-ease 'in 0 10 0) 0))
(assert (= (rationalize 4 (tween elastic-ease 'in 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween elastic-ease 'in 0 10 0.5) 0.00001) 0.0))

(assert (= (tween elastic-ease 'out 0 10 0) 0))
(assert (= (rationalize 4 (tween elastic-ease 'out 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween elastic-ease 'out 0 10 0.5) 0.00001) 10.0))

(assert (= (tween elastic-ease 'inout 0 10 0) 0))
(assert (= (rationalize 4 (tween elastic-ease 'inout 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween elastic-ease 'inout 0 10 0.5) 0.00001) 9.0066))

;; Back ease
 
(assert (= (tween back-ease 'in 0 10 0) 0))
(assert (= (rationalize 4 (tween back-ease 'in 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween back-ease 'in 0 10 0.5) 0.00001) 0.0))

(assert (= (tween back-ease 'out 0 10 0) 0))
(assert (= (rationalize 4 (tween back-ease 'out 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween back-ease 'out 0 10 0.5) 0.00001) 10.0))

(assert (= (tween back-ease 'inout 0 10 0) 0))
(assert (= (rationalize 4 (tween back-ease 'inout 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween back-ease 'inout 0 10 0.5) 0.00001) 5.0))

;; Bounce ease
 
(assert (= (tween bounce-ease 'in 0 10 0) 0))
(assert (= (rationalize 4 (tween bounce-ease 'in 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween bounce-ease 'in 0 10 0.5) 0.00001) 2.3437))

(assert (= (tween bounce-ease 'out 0 10 0) 0))
(assert (= (rationalize 4 (tween bounce-ease 'out 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween bounce-ease 'out 0 10 0.5) 0.00001) 7.6562))

(assert (= (tween bounce-ease 'inout 0 10 0) 0))
(assert (= (rationalize 4 (tween bounce-ease 'inout 0 10 1) 0.00001) 10))
(assert (= (rationalize 4 (tween bounce-ease 'inout 0 10 0.5) 0.00001) 5.0))
