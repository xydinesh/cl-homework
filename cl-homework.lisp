;;;; cl-homework.lisp

(in-package #:cl-homework)

;; Add a simple prefix dispatcher to the *dispatch-table*
(setq *dispatch-table*
      `(,(create-prefix-dispatcher "/hello" 'hello-page)))

;; Handler functions either return generated Web pages as strings,
;; or write to the output stream returned by write-headers
(defun hello-page ()
  "Hello !")

;(defun start-server (&key (port 8080))
;  (start (make-instance 'easy-acceptor :port port)))

(defun main ()
  (start (make-instance 'easy-acceptor :port 8080))
  (sb-thread:join-thread (find-if
                          (lambda (th)
                            (string= (sb-thread:thread-name th) "hunchentoot-listener-*:8080"))
                          (sb-thread:list-all-threads))))
