
(cl:in-package :asdf)

(defsystem "camera_srv_definitions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "save_tracking_results_to_file" :depends-on ("_package_save_tracking_results_to_file"))
    (:file "_package_save_tracking_results_to_file" :depends-on ("_package"))
    (:file "visualize_compound" :depends-on ("_package_visualize_compound"))
    (:file "_package_visualize_compound" :depends-on ("_package"))
    (:file "stop_tracker" :depends-on ("_package_stop_tracker"))
    (:file "_package_stop_tracker" :depends-on ("_package"))
    (:file "cleanup" :depends-on ("_package_cleanup"))
    (:file "_package_cleanup" :depends-on ("_package"))
    (:file "start_tracker" :depends-on ("_package_start_tracker"))
    (:file "_package_start_tracker" :depends-on ("_package"))
    (:file "do_ba" :depends-on ("_package_do_ba"))
    (:file "_package_do_ba" :depends-on ("_package"))
    (:file "get_tracking_results" :depends-on ("_package_get_tracking_results"))
    (:file "_package_get_tracking_results" :depends-on ("_package"))
  ))