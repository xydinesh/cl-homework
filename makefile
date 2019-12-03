all: build
build:
	sbcl --load cl-homework.asd \
	--eval '(ql:quickload :cl-homework)' \
       	--eval "(sb-ext:save-lisp-and-die #p\"cl-homework\" :toplevel #'cl-homework:main :executable t)"
