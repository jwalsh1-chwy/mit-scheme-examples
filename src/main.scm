;; Scheme Examples
(display "Chewy 101 Scheme Examples")
(newline)

;; "append-list" which takes two lists and concats 

;; append (append-lists)
(define append-lists (lambda (l1 l2)
                        (if (null? l1) l2)
                        (cons (car l1) (append-lists (cdr l1) l2))))

(display (append-lists '(1 2 3) '(4 5 6)))

;; test append
(define append-lists-tests (list (list '(1 2 3) '(4 5 6) '(1 2 3 4 5 6))
                           (list '(1 2 3) '() '(1 2 3))
                           (list '() '(4 5 6) '(4 5 6))
                           (list '() '() '())))

(define append-lists-harness (lambda (tests)
                                (if (null? tests) 'done)
                                (let ((test (car tests)))
                                  (if (= (append-lists (car test) (car (cdr test))) (car (cdr (cdr test))))
                                      (test-append-lists (cdr tests))
                                      (error "test failed" test)))))


;; "factorial" which takes a single integer argument and returns its factorial

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

(fact-harness fact-tests)

;; "fibonacci" which takes a single integer argument and returns the fibonacci number at that position in the series

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

(fib-harness fib-tests)



;; "sum-of-squares" which takes two integer arguments and returns the sum of the squares of the numbers


;; "even?" which takes a single integer argument and returns a boolean indicating if the number is even


;; "reverse-list" which takes a list as an argument and returns a new list with the elements in reverse order


(define reverse-list (lambda (l)
                         (if (null? l) '())
                         (append-lists (reverse-list (cdr l)) (cons (car l) '()))))

(display (reverse-list '(1 2 3 4 5 6)))

;; test reverse
(define reverse-list-tests (list (list '(1 2 3 4 5 6) '(6 5 4 3 2 1))
                                   (list '(1 2 3) '(3 2 1))
                                   (list '(1) '(1))
                                   (list '() '())))

(define reverse-list-harness (lambda (tests)
                                    (if (null? tests) 'done)
                                    (let ((test (car tests)))
                                    (if (= (reverse-list (car test)) (car (cdr test)))
                                        (test-reverse-list (cdr tests))
                                        (error "test failed" test)))))



;; "merge-sort" which takes a list as an argument and returns a new list with the elements sorted in ascending order


;; "binary-search" which takes a list and a value as arguments and returns a boolean indicating if the value is in the list


;; "flatten" which takes a nested list as an argument and returns a new list with all the sublists flattened


;; "map" which takes a function and a list as arguments and returns a new list with the function applied to each element of the original list


;; "reduce" which takes a function and a list as arguments and applies the function cumulatively to the elements of the list


;; "filter" which takes a function and a list as arguments and returns a new list with only the elements that satisfy the function


;; "zip" which takes two lists as arguments and returns a new list of pairs where the i-th element is a pair of the i-th elements of the input lists


;; "curry" which takes a function with multiple arguments and returns a new function that takes the arguments one at a time


;; "compose" which takes two functions as arguments and returns a new function that applies the first function to the result of the second function


;; "memoize" which takes a function as an argument and returns a new function with caching enabled for faster performance on repeat calls.
