;;;; cl-jarvis.asd

(asdf:defsystem #:cl-jarvis
  :serial t
  :description "Just A Rather Very Intelligent System"
  :author "Alexander Popolitov <popolit@gmail.com>"
  :license "GPL"
  :depends-on (#:cl-secure-swank)
  :components ((:file "package")
               (:file "cl-jarvis")))

