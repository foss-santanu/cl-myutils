;;;; cl-myutils.asd

(asdf:defsystem #:cl-myutils
  :description "The codebase for different utility tools and libraries"
  :author "Santanu Chakrabarti <mailto:santanu.chakrabarti@gmail.com>"
  :license  "The GNU General Public License <https://www.gnu.org/licenses/gpl-3.0.txt>"
  :version "0.0.1"
  :serial t
  :depends-on (#:alexandria #:cl-utilities #:global-vars #:iterate #:let-plus #:trivia)
  :pathname "src"
  :components ((:file "package")
               (:file "cl-myutils")
	       (:file "misc")))


(asdf:defsystem #:cl-myutils/test
  :description "The codebase for testing the utils"
  :author "Santanu Chakrabarti <mailto:santanu.chakrabarti@gmail.com>"
  :license  "The GNU General Public License <https://www.gnu.org/licenses/gpl-3.0.txt>"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl-myutils #:clunit2)
  :pathname "test"
  :components ((:file "package")
	       (:file "test-suits")
	       (:file "test-misc")))
