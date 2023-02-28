#7
#a
(define (fibonaci1 n)
    (cond
        ((= 0 n) 0)
        ((= 1 n) 1)
        (else (+ (fibonaci1 (- n 2)) (fibonaci1 (- n 1))))
    )
)

(fibonaci1 4)
#(fibonaci1 (2)) + (fibonaci1 (3))
#(fibonaci1 (1))+ (fibonaci1 (0)) + (fibonaci1 (2)) +(fibonaci1 (1))
#(fibonaci1 (1))+ (fibonaci1 (0)) + (fibonaci1 (0)) + (fibonaci1 (1)) +(fibonaci1 (1)) = 1 + 0 + 0 + 1 + 1

#b