(in-package :cl-myutils/test)

(setf *print-pretty* t)
(setf clunit:*clunit-report-format* :default)

(clunit:defsuite all-tests ())
(clunit:defsuite misc-tests (all-tests))
