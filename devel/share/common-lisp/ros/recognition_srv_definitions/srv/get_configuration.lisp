; Auto-generated. Do not edit!


(cl:in-package recognition_srv_definitions-srv)


;//! \htmlinclude get_configuration-request.msg.html

(cl:defclass <get_configuration-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_configuration-request (<get_configuration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_configuration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_configuration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recognition_srv_definitions-srv:<get_configuration-request> is deprecated: use recognition_srv_definitions-srv:get_configuration-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_configuration-request>) ostream)
  "Serializes a message object of type '<get_configuration-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_configuration-request>) istream)
  "Deserializes a message object of type '<get_configuration-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_configuration-request>)))
  "Returns string type for a service object of type '<get_configuration-request>"
  "recognition_srv_definitions/get_configurationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_configuration-request)))
  "Returns string type for a service object of type 'get_configuration-request"
  "recognition_srv_definitions/get_configurationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_configuration-request>)))
  "Returns md5sum for a message object of type '<get_configuration-request>"
  "13f7846c6d4d55da52d3bbdb9927422a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_configuration-request)))
  "Returns md5sum for a message object of type 'get_configuration-request"
  "13f7846c6d4d55da52d3bbdb9927422a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_configuration-request>)))
  "Returns full string definition for message of type '<get_configuration-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_configuration-request)))
  "Returns full string definition for message of type 'get_configuration-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_configuration-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_configuration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_configuration-request
))
;//! \htmlinclude get_configuration-response.msg.html

(cl:defclass <get_configuration-response> (roslisp-msg-protocol:ros-message)
  ((models_folder
    :reader models_folder
    :initarg :models_folder
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass get_configuration-response (<get_configuration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_configuration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_configuration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recognition_srv_definitions-srv:<get_configuration-response> is deprecated: use recognition_srv_definitions-srv:get_configuration-response instead.")))

(cl:ensure-generic-function 'models_folder-val :lambda-list '(m))
(cl:defmethod models_folder-val ((m <get_configuration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recognition_srv_definitions-srv:models_folder-val is deprecated.  Use recognition_srv_definitions-srv:models_folder instead.")
  (models_folder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_configuration-response>) ostream)
  "Serializes a message object of type '<get_configuration-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'models_folder) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_configuration-response>) istream)
  "Deserializes a message object of type '<get_configuration-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'models_folder) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_configuration-response>)))
  "Returns string type for a service object of type '<get_configuration-response>"
  "recognition_srv_definitions/get_configurationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_configuration-response)))
  "Returns string type for a service object of type 'get_configuration-response"
  "recognition_srv_definitions/get_configurationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_configuration-response>)))
  "Returns md5sum for a message object of type '<get_configuration-response>"
  "13f7846c6d4d55da52d3bbdb9927422a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_configuration-response)))
  "Returns md5sum for a message object of type 'get_configuration-response"
  "13f7846c6d4d55da52d3bbdb9927422a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_configuration-response>)))
  "Returns full string definition for message of type '<get_configuration-response>"
  (cl:format cl:nil "std_msgs/String models_folder~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_configuration-response)))
  "Returns full string definition for message of type 'get_configuration-response"
  (cl:format cl:nil "std_msgs/String models_folder~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_configuration-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'models_folder))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_configuration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_configuration-response
    (cl:cons ':models_folder (models_folder msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_configuration)))
  'get_configuration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_configuration)))
  'get_configuration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_configuration)))
  "Returns string type for a service object of type '<get_configuration>"
  "recognition_srv_definitions/get_configuration")