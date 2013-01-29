; (+ 4 5)
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))
  )
)

;; Substitution:
;
; (inc (+ 3 5))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc (5)))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
;
; the process is linear-recursive

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))
  )
)

;; Substitution:
; (+ (dec 4) (inc 5))
; (+ (dec 3) (inc 6))
; (+ (dec 2) (inc 7))
; (+ (dec 1) (inc 8))
; (+ (dec 0) (inc 9))
; 9
;
; the process is linear-iterative
