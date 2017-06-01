
(cl:in-package :asdf)

(defsystem "object_perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "indices" :depends-on ("_package_indices"))
    (:file "_package_indices" :depends-on ("_package"))
    (:file "BBox" :depends-on ("_package_BBox"))
    (:file "_package_BBox" :depends-on ("_package"))
    (:file "classification" :depends-on ("_package_classification"))
    (:file "_package_classification" :depends-on ("_package"))
  ))