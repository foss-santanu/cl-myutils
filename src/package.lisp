;;;; package.lisp

(defpackage #:cl-myutils
  (:nicknames #:mu)
  (:use #:cl #:alexandria)
  (:export #:create-seq
           #:nxt-fibonacci
           #:nxt-power-of2
           #:^
           #:in-range-of))
