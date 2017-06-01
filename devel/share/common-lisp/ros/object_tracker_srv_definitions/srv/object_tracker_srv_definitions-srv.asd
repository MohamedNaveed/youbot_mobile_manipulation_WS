
(cl:in-package :asdf)

(defsystem "object_tracker_srv_definitions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "detect_and_track" :depends-on ("_package_detect_and_track"))
    (:file "_package_detect_and_track" :depends-on ("_package"))
    (:file "stop_tracker" :depends-on ("_package_stop_tracker"))
    (:file "_package_stop_tracker" :depends-on ("_package"))
    (:file "cleanup" :depends-on ("_package_cleanup"))
    (:file "_package_cleanup" :depends-on ("_package"))
    (:file "start_tracker" :depends-on ("_package_start_tracker"))
    (:file "_package_start_tracker" :depends-on ("_package"))
    (:file "change_tracking_model" :depends-on ("_package_change_tracking_model"))
    (:file "_package_change_tracking_model" :depends-on ("_package"))
  ))