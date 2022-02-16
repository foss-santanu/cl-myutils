(in-package #:cl-myutils/test)

(clunit:deftest test-fibo (misc-tests)
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-fibonacci '() 1) '(1))
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-fibonacci '() 2) '(1 1))
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-fibonacci '() 3) '(1 1 2))
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-fibonacci '() 5) '(1 1 2 3 5)))

(clunit:deftest test-power-of2 (misc-tests)
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-power-of2 '() 1) '(2))
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-power-of2 '() 2) '(2 4))
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-power-of2 '() 3) '(2 4 8)))

(clunit:deftest test-in-range-of (misc-tests)
  (clunit:assert-true (mu:in-range-of 1.80 1.8034))
  (clunit:assert-true (mu:in-range-of 0.00 0 :range 0.0001))
  (clunit:assert-false (mu:in-range-of 1.80 2.0))
  (clunit:assert-false (mu:in-range-of 1.80 1.8034 :range 0.0001)))

(clunit:deftest test-^ (misc-tests)
  (clunit:assert-equalp (mu:^ 2 3) 8)
  (clunit:assert-equalp (mu:^ 2 -3) 1/8)
  (clunit:assert-equalp (mu:^ 2 2.7) 8)
  (clunit:assert-equalp (mu:^ 2 2.2) 4)
  (clunit:assert-equalp (mu:^ 2.5 2) (expt 2.5 2)))
  


