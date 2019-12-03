;;;; package.lisp
(ql:quickload '(:hunchentoot :cl-who))

(defpackage #:cl-homework
  (:use #:cl #:hunchentoot #:cl-who)
    (:export :main))
