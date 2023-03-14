#6
#a
(define (factorial1 n)
    (cond
        ((= 0 n) 1)
        (else (* n (factorial1 (- n 1))))
    )
)

(factorial1 4)
#b
(define (factorial_help n i acc)
    (cond 
        ( (not (< n i)) (factorial_help n (+ i 1) (* i acc)))
        (else acc)
    )
)
(define (factorial n)
    (factorial_help n 1 1))

(factorial 4)