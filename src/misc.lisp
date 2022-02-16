(in-package #:cl-myutils)

(defun create-seq (seq-generator seq-items iter-count)
  (loop for i from 0 to (1- iter-count)
    do  (let ((nxt-entry (funcall seq-generator seq-items)))
           (setf seq-items (append seq-items (list nxt-entry)))))
  seq-items)

(defun nxt-fibonacci (fib-seq)
  (if (or (null fib-seq) (= (length fib-seq) 1))
      1
      (let ((n (length fib-seq)))
        (+ (nth (- n 2) fib-seq) (nth (- n 1) fib-seq)))))

(defun nxt-power-of2 (powers-of2)
  (if (null powers-of2)
      2
      (* 2 (car (last powers-of2)))))

;; Macro to calculate the power of a number
;; If the power is not integer it is rounded off to the nearest integer.
(defmacro ^ (num pow)
  `(let ((lst '())
         (ipow ,pow)
	 (lnum ,num))
     ;; if a real value passed as power
     (unless (integerp ipow)
       (setf ipow (round ipow)))
     ;; if power is a negative integer
     (when (minusp ipow)
       (setf lnum (/ 1 lnum))
       (setf ipow (abs ipow)))
     (dotimes (n ipow)
       (push lnum lst))
     (apply #'* lst)))

(defun in-range-of (float1 float2 &key (range 0.005))
  (< (- float2 range) float1 (+ float2 range)))
