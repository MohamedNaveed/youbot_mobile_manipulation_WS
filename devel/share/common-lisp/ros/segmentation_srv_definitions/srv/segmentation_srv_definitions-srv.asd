
(cl:in-package :asdf)

(defsystem "segmentation_srv_definitions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MS_segment" :depends-on ("_package_MS_segment"))
    (:file "_package_MS_segment" :depends-on ("_package"))
    (:file "segment" :depends-on ("_package_segment"))
    (:file "_package_segment" :depends-on ("_package"))
  ))