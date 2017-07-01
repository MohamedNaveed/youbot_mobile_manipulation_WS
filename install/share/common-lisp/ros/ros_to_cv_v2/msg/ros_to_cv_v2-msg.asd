
(cl:in-package :asdf)

(defsystem "ros_to_cv_v2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Center" :depends-on ("_package_Center"))
    (:file "_package_Center" :depends-on ("_package"))
  ))