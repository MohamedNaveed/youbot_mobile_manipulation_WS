; Auto-generated. Do not edit!


(cl:in-package camera_srv_definitions-srv)


;//! \htmlinclude save_tracking_results_to_file-request.msg.html

(cl:defclass <save_tracking_results_to_file-request> (roslisp-msg-protocol:ros-message)
  ((dir_name
    :reader dir_name
    :initarg :dir_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass save_tracking_results_to_file-request (<save_tracking_results_to_file-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_tracking_results_to_file-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_tracking_results_to_file-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<save_tracking_results_to_file-request> is deprecated: use camera_srv_definitions-srv:save_tracking_results_to_file-request instead.")))

(cl:ensure-generic-function 'dir_name-val :lambda-list '(m))
(cl:defmethod dir_name-val ((m <save_tracking_results_to_file-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_srv_definitions-srv:dir_name-val is deprecated.  Use camera_srv_definitions-srv:dir_name instead.")
  (dir_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_tracking_results_to_file-request>) ostream)
  "Serializes a message object of type '<save_tracking_results_to_file-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dir_name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_tracking_results_to_file-request>) istream)
  "Deserializes a message object of type '<save_tracking_results_to_file-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dir_name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_tracking_results_to_file-request>)))
  "Returns string type for a service object of type '<save_tracking_results_to_file-request>"
  "camera_srv_definitions/save_tracking_results_to_fileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_tracking_results_to_file-request)))
  "Returns string type for a service object of type 'save_tracking_results_to_file-request"
  "camera_srv_definitions/save_tracking_results_to_fileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_tracking_results_to_file-request>)))
  "Returns md5sum for a message object of type '<save_tracking_results_to_file-request>"
  "bc6493da4c9a75380fe3c362fecca406")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_tracking_results_to_file-request)))
  "Returns md5sum for a message object of type 'save_tracking_results_to_file-request"
  "bc6493da4c9a75380fe3c362fecca406")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_tracking_results_to_file-request>)))
  "Returns full string definition for message of type '<save_tracking_results_to_file-request>"
  (cl:format cl:nil "~%std_msgs/String dir_name~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_tracking_results_to_file-request)))
  "Returns full string definition for message of type 'save_tracking_results_to_file-request"
  (cl:format cl:nil "~%std_msgs/String dir_name~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_tracking_results_to_file-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dir_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_tracking_results_to_file-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_tracking_results_to_file-request
    (cl:cons ':dir_name (dir_name msg))
))
;//! \htmlinclude save_tracking_results_to_file-response.msg.html

(cl:defclass <save_tracking_results_to_file-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass save_tracking_results_to_file-response (<save_tracking_results_to_file-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_tracking_results_to_file-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_tracking_results_to_file-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<save_tracking_results_to_file-response> is deprecated: use camera_srv_definitions-srv:save_tracking_results_to_file-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_tracking_results_to_file-response>) ostream)
  "Serializes a message object of type '<save_tracking_results_to_file-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_tracking_results_to_file-response>) istream)
  "Deserializes a message object of type '<save_tracking_results_to_file-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_tracking_results_to_file-response>)))
  "Returns string type for a service object of type '<save_tracking_results_to_file-response>"
  "camera_srv_definitions/save_tracking_results_to_fileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_tracking_results_to_file-response)))
  "Returns string type for a service object of type 'save_tracking_results_to_file-response"
  "camera_srv_definitions/save_tracking_results_to_fileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_tracking_results_to_file-response>)))
  "Returns md5sum for a message object of type '<save_tracking_results_to_file-response>"
  "bc6493da4c9a75380fe3c362fecca406")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_tracking_results_to_file-response)))
  "Returns md5sum for a message object of type 'save_tracking_results_to_file-response"
  "bc6493da4c9a75380fe3c362fecca406")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_tracking_results_to_file-response>)))
  "Returns full string definition for message of type '<save_tracking_results_to_file-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_tracking_results_to_file-response)))
  "Returns full string definition for message of type 'save_tracking_results_to_file-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_tracking_results_to_file-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_tracking_results_to_file-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_tracking_results_to_file-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_tracking_results_to_file)))
  'save_tracking_results_to_file-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_tracking_results_to_file)))
  'save_tracking_results_to_file-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_tracking_results_to_file)))
  "Returns string type for a service object of type '<save_tracking_results_to_file>"
  "camera_srv_definitions/save_tracking_results_to_file")