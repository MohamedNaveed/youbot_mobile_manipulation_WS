; Auto-generated. Do not edit!


(cl:in-package object_tracker_srv_definitions-srv)


;//! \htmlinclude change_tracking_model-request.msg.html

(cl:defclass <change_tracking_model-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass change_tracking_model-request (<change_tracking_model-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <change_tracking_model-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'change_tracking_model-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<change_tracking_model-request> is deprecated: use object_tracker_srv_definitions-srv:change_tracking_model-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <change_tracking_model-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_tracker_srv_definitions-srv:filename-val is deprecated.  Use object_tracker_srv_definitions-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <change_tracking_model-request>) ostream)
  "Serializes a message object of type '<change_tracking_model-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <change_tracking_model-request>) istream)
  "Deserializes a message object of type '<change_tracking_model-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<change_tracking_model-request>)))
  "Returns string type for a service object of type '<change_tracking_model-request>"
  "object_tracker_srv_definitions/change_tracking_modelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_tracking_model-request)))
  "Returns string type for a service object of type 'change_tracking_model-request"
  "object_tracker_srv_definitions/change_tracking_modelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<change_tracking_model-request>)))
  "Returns md5sum for a message object of type '<change_tracking_model-request>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'change_tracking_model-request)))
  "Returns md5sum for a message object of type 'change_tracking_model-request"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<change_tracking_model-request>)))
  "Returns full string definition for message of type '<change_tracking_model-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'change_tracking_model-request)))
  "Returns full string definition for message of type 'change_tracking_model-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <change_tracking_model-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <change_tracking_model-request>))
  "Converts a ROS message object to a list"
  (cl:list 'change_tracking_model-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude change_tracking_model-response.msg.html

(cl:defclass <change_tracking_model-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass change_tracking_model-response (<change_tracking_model-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <change_tracking_model-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'change_tracking_model-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<change_tracking_model-response> is deprecated: use object_tracker_srv_definitions-srv:change_tracking_model-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <change_tracking_model-response>) ostream)
  "Serializes a message object of type '<change_tracking_model-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <change_tracking_model-response>) istream)
  "Deserializes a message object of type '<change_tracking_model-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<change_tracking_model-response>)))
  "Returns string type for a service object of type '<change_tracking_model-response>"
  "object_tracker_srv_definitions/change_tracking_modelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_tracking_model-response)))
  "Returns string type for a service object of type 'change_tracking_model-response"
  "object_tracker_srv_definitions/change_tracking_modelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<change_tracking_model-response>)))
  "Returns md5sum for a message object of type '<change_tracking_model-response>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'change_tracking_model-response)))
  "Returns md5sum for a message object of type 'change_tracking_model-response"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<change_tracking_model-response>)))
  "Returns full string definition for message of type '<change_tracking_model-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'change_tracking_model-response)))
  "Returns full string definition for message of type 'change_tracking_model-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <change_tracking_model-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <change_tracking_model-response>))
  "Converts a ROS message object to a list"
  (cl:list 'change_tracking_model-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'change_tracking_model)))
  'change_tracking_model-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'change_tracking_model)))
  'change_tracking_model-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_tracking_model)))
  "Returns string type for a service object of type '<change_tracking_model>"
  "object_tracker_srv_definitions/change_tracking_model")