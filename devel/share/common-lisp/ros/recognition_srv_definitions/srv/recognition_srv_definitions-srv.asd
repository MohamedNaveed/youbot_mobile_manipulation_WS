
(cl:in-package :asdf)

(defsystem "recognition_srv_definitions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :object_perception_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "recognize" :depends-on ("_package_recognize"))
    (:file "_package_recognize" :depends-on ("_package"))
    (:file "retrain_recognizer" :depends-on ("_package_retrain_recognizer"))
    (:file "_package_retrain_recognizer" :depends-on ("_package"))
    (:file "get_configuration" :depends-on ("_package_get_configuration"))
    (:file "_package_get_configuration" :depends-on ("_package"))
  ))