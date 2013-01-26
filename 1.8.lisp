(define (cube-root x)
  (cube-iter 1.0 x)
)

(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x) x))
)

(define ( improve guess x )
  (/ 
    (+ (/ x (square guess)) (* guess 2))
    3
  )
)

(define (square x)
  (* x x)
)

(define (good-enough? guess x)
  (guess-change-is-small-fraction-of-guess guess x)
)

(define (guess-change-is-small-fraction-of-guess guess x)
  (< (abs (- (improve guess x) guess)) (* guess 0.0001))
)
