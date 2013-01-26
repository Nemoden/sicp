(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x))
)

(define (improve guess x)
  (average (/ x guess) guess)
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (good-enough? guess x)
  ;; I guess I could do this:
  ;(= (/ (improve guess x) guess) 1)
  ;; why not?

  ;; instead I'm doing this:
  (guess-change-is-small-fraction-of-guess guess x)
)

(define (guess-change-is-small-fraction-of-guess guess x)
  (< (abs (- (improve guess x) guess)) (* guess 0.0001))
)

(define ( sqrt x )
  (sqrt-iter 1.0 x)
)
