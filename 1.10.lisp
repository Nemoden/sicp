; Ackermann's function:
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))
  )
)

;; Value of (A 1 10) should be 1024 ( 2**10 )
;; Substitution:
;
;(A (- 1 1) (A 1 (- 10 1)))
;(A 0 (A 1 9))
;(A 0 (A (- 1 1) (A 1 (- 9 1)))) ...
;(A 0 (A 0 (A 1 8)))
;(A 0 (A 0 (A 0 (A 1 7))))
;(A 0 (A 0 (A 0 (A 0 (A 1 6)))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))
;(A 0 (A 0 (A 0 (A 0 (A 0 32)))))
;(A 0 (A 0 (A 0 (A 0 64))))
;(A 0 (A 0 (A 0 128)))
;(A 0 (A 0 256))
;(A 0 512)
;1024


;; Value of (A 2 4) should be 65536 ( 2 ** 16 )
;; Substitution:
;
;(A (- 2 1) (A 2 (- 4 1)))
;(A 1 (A 2 3))
;(A 1 (A (- 2 1) (A 2 (- 3 1))))
;(A 1 (A 1 (A 2 2)))
;(A 1 (A 1 (A 1 (A 2 1))))
;(A 1 (A 1 (A 1 2)))
;(A 1 (A 1 (A 0 (A 1 1))))
;(A 1 (A 1 (A 0 2)))
;(A 1 (A 1 4))
;(A 1 (A 0 (A 1 3)))
;(A 1 (A 0 (A 0 (A 1 2))))
;(A 1 (A 0 (A 0 (A 0 (A 1 1)))))
;(A 1 (A 0 (A 0 (A 0 2))))
;(A 1 (A 0 (A 0 4)))
;(A 1 (A 0 8))
;(A 1 16)



;; Value of (A 3 3) should be 134217728 ( 2 ** 27 )
;; WRONG! Correct is: 65536 ( 2 ** 16 )
;; Substitution:
;
;(A (- 3 1) (A 3 (- 3 1)))
;(A 2 (A 3 2))
;(A 2 (A 2 (A 3 1)))
;(A 2 (A 2 2))
;(A 2 (A 1 2))
;(A 2 (A 0 (A 1 1)))
;(A 2 (A 0 2))
;(A 2 4)


(define (f n) (A 0 n)) ; 2n

(define (g n) (A 1 n)) ; 2 ** n = 2 in power of n

(define (h n) (A 2 n)) ; 2 ** (n n) = 2 in power of n in power of 2

; extra:
(define (x n) (A 3 n))
