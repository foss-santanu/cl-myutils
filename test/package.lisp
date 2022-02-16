;;;; package.lisp

(defpackage #:cl-myutils/test
  (:nicknames #:mu/t)
  (:use #:cl #:alexandria #:cl-myutils #:clunit)
  (:export #:all-tests
	   #:misc-tests))
