;;;; cl-homework.asd

(asdf:defsystem #:cl-homework
  :description "Simple REST API implementation"
  :author "Dinesh Weerapurage <xydinesh@gmail.com>"
  :license  "Apache 2.0"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot #:cl-who)
  :components ((:file "package")
               (:file "cl-homework")))
