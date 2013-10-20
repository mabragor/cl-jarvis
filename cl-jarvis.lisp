;;;; cl-jarvis.lisp

(in-package #:cl-jarvis)

(defparameter *port* 5005)

(defparameter *valid-rpcs*
  '((:bark () (swank::encode-message (list :ok "Whof Whof!") (swank::current-socket-io)))))

(defun launch-jarvis ()
  (let ((*macrochar-blacklist* nil)
	(*macrochar-whitelist* '(:lists :quotes)))
    (let ((swank::*valid-rpcs* *valid-rpcs*))
      (with-macrochar-secured-reader
	(create-server :port *port* :dont-close t)))))
(defun stop-jarvis ()
  (stop-server *port*))

