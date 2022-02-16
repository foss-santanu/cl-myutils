(in-package #:cl-myutils/test)

(clunit:deftest test-fibo (misc-tests)
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-fibonacci '() 1) '(1))
  (clunit:assert-equalp (mu:create-seq #'mu:nxt-fibonacci '() 2) '(1 1)))
