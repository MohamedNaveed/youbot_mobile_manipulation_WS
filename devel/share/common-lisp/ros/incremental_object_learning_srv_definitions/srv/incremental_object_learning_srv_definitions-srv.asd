
(cl:in-package :asdf)

(defsystem "incremental_object_learning_srv_definitions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "clear" :depends-on ("_package_clear"))
    (:file "_package_clear" :depends-on ("_package"))
    (:file "visualize" :depends-on ("_package_visualize"))
    (:file "_package_visualize" :depends-on ("_package"))
    (:file "write_debug_images_to_disk" :depends-on ("_package_write_debug_images_to_disk"))
    (:file "_package_write_debug_images_to_disk" :depends-on ("_package"))
    (:file "learn_object_inc" :depends-on ("_package_learn_object_inc"))
    (:file "_package_learn_object_inc" :depends-on ("_package"))
    (:file "learn_object" :depends-on ("_package_learn_object"))
    (:file "_package_learn_object" :depends-on ("_package"))
    (:file "save_model" :depends-on ("_package_save_model"))
    (:file "_package_save_model" :depends-on ("_package"))
  ))