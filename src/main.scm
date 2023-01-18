(display "hello world")
(newline)

;; fibbonacci 
(define fib (lambda (n)
              (if (= n 0) 0)
              (if (= n 1) 1)
              (+ (fib (- n 1)) (fib (- n 2)))))
              
(display (fib 10))

;; list of tests for fib

(define fib-tests (list (list 0 0)
                        (list 1 1)
                        (list 2 1)
                        (list 3 2)
                        (list 4 3)
                        (list 5 5)
                        (list 6 8)
                        (list 7 13)
                        (list 8 21)
                        (list 9 34)
                        (list 10 55)))


;; test fib
(define fib-harness (lambda (tests)
                   (if (null? tests) 'done)
                   (let ((test (car tests)))
                     (if (= (fib (car test)) (car (cdr test)))
                         (test-fib (cdr tests))
                         (error "test failed" test)))))


;; factorial
(define fact (lambda (n)
               (if (= n 0) 1)
               (* n (fact (- n 1)))))

(display (fact 5))

(define fact-tests (list (list 0 1)
                         (list 1 1)
                         (list 2 2)
                         (list 3 6)
                         (list 4 24)
                         (list 5 120)
                         (list 6 720)
                         (list 7 5040)
                         (list 8 40320)
                         (list 9 362880)
                         (list 10 3628800)))

;; test factorial
(define fact-harness (lambda (tests)
                   (if (null? tests) 'done)
                   (let ((test (car tests)))
                     (if (= (fact (car test)) (car (cdr test)))
                         (test-fact (cdr tests))
                         (error "test failed" test)))))