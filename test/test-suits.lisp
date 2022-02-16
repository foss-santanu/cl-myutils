(in-package :cl-myutils/test)

(setf *print-pretty* t)

(clunit:defsuite all-tests ())
(clunit:defsuite misc-tests (all-tests))
