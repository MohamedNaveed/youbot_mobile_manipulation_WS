; Auto-generated. Do not edit!


(cl:in-package camera_srv_definitions-srv)


;//! \htmlinclude cleanup-request.msg.html

(cl:defclass <cleanup-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cleanup-request (<cleanup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cleanup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cleanup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<cleanup-request> is deprecated: use camera_srv_definitions-srv:cleanup-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cleanup-request>) ostream)
  "Serializes a message object of type '<cleanup-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cleanup-request>) istream)
  "Deserializes a message object of type '<cleanup-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cleanup-request>)))
  "Returns string type for a service object of type '<cleanup-request>"
  "camera_srv_definitions/cleanupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cleanup-request)))
  "Returns string type for a service object of type 'cleanup-request"
  "camera_srv_definitions/cleanupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cleanup-request>)))
  "Returns md5sum for a message object of type '<cleanup-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cleanup-request)))
  "Returns md5sum for a message object of type 'cleanup-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cleanup-request>)))
  "Returns full string definition for message of type '<cleanup-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cleanup-request)))
  "Returns full string definition for message of type 'cleanup-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cleanup-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cleanup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cleanup-request
))
;//! \htmlinclude cleanup-response.msg.html

(cl:defclass <cleanup-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cleanup-response (<cleanup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cleanup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cleanup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<cleanup-response> is deprecated: use camera_srv_definitions-srv:cleanup-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cleanup-response>) ostream)
  "Serializes a message object of type '<cleanup-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cleanup-response>) istream)
  "Deserializes a message object of type '<cleanup-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cleanup-response>)))
  "Returns string type for a service object of type '<cleanup-response>"
  "camera_srv_definitions/cleanupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cleanup-response)))
  "Returns string type for a service object of type 'cleanup-response"
  "camera_srv_definitions/cleanupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cleanup-response>)))
  "Returns md5sum for a message object of type '<cleanup-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cleanup-response)))
  "Returns md5sum for a message object of type 'cleanup-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cleanup-response>)))
  "Returns full string definition for message of type '<cleanup-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cleanup-response)))
  "Returns full string definition for message of type 'cleanup-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cleanup-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cleanup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cleanup-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cleanup)))
  'cleanup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cleanup)))
  'cleanup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cleanup)))
  "Returns string type for a service object of type '<cleanup>"
  "camera_srv_definitions/cleanup")