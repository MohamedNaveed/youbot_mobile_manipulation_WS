
(cl:in-package :asdf)

(defsystem "classifier_srv_definitions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :object_perception_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "segment_and_classify" :depends-on ("_package_segment_and_classify"))
    (:file "_package_segment_and_classify" :depends-on ("_package"))
    (:file "mv_classify" :depends-on ("_package_mv_classify"))
    (:file "_package_mv_classify" :depends-on ("_package"))
    (:file "classify" :depends-on ("_package_classify"))
    (:file "_package_classify" :depends-on ("_package"))
  ))