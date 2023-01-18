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

;; append (jwalsh-append)
(define jwalsh-append (lambda (l1 l2)
                        (if (null? l1) l2)
                        (cons (car l1) (jwalsh-append (cdr l1) l2))))

(display (jwalsh-append '(1 2 3) '(4 5 6)))

;; test append
(define jwalsh-append-tests (list (list '(1 2 3) '(4 5 6) '(1 2 3 4 5 6))
                           (list '(1 2 3) '() '(1 2 3))
                           (list '() '(4 5 6) '(4 5 6))
                           (list '() '() '())))

(define jwalsh-append-harness (lambda (tests)
                                (if (null? tests) 'done)
                                (let ((test (car tests)))
                                  (if (= (jwalsh-append (car test) (car (cdr test))) (car (cdr (cdr test))))
                                      (test-jwalsh-append (cdr tests))
                                      (error "test failed" test)))))

;; reverse (jwalsh-reverse)
(define jwalsh-reverse (lambda (l)
                         (if (null? l) '())
                         (jwalsh-append (jwalsh-reverse (cdr l)) (cons (car l) '()))))

(display (jwalsh-reverse '(1 2 3 4 5 6)))

;; test reverse
(define jwalsh-reverse-tests (list (list '(1 2 3 4 5 6) '(6 5 4 3 2 1))
                                   (list '(1 2 3) '(3 2 1))
                                   (list '(1) '(1))
                                   (list '() '())))

(define jwalsh-reverse-harness (lambda (tests)
                                    (if (null? tests) 'done)
                                    (let ((test (car tests)))
                                    (if (= (jwalsh-reverse (car test)) (car (cdr test)))
                                        (test-jwalsh-reverse (cdr tests))
                                        (error "test failed" test)))))