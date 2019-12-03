;;;; cl-homework.asd

(asdf:defsystem #:cl-homework
  :description "Describe cl-homework here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot)
  :components ((:file "package")
               (:file "cl-homework")))
