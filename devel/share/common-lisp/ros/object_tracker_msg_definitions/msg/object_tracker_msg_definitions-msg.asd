
(cl:in-package :asdf)

(defsystem "object_tracker_msg_definitions-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectInfo" :depends-on ("_package_ObjectInfo"))
    (:file "_package_ObjectInfo" :depends-on ("_package"))
  ))