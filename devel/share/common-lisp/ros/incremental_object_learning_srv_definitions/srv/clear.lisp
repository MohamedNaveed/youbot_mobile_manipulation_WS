; Auto-generated. Do not edit!


(cl:in-package incremental_object_learning_srv_definitions-srv)


;//! \htmlinclude clear-request.msg.html

(cl:defclass <clear-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass clear-request (<clear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<clear-request> is deprecated: use incremental_object_learning_srv_definitions-srv:clear-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clear-request>) ostream)
  "Serializes a message object of type '<clear-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clear-request>) istream)
  "Deserializes a message object of type '<clear-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clear-request>)))
  "Returns string type for a service object of type '<clear-request>"
  "incremental_object_learning_srv_definitions/clearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clear-request)))
  "Returns string type for a service object of type 'clear-request"
  "incremental_object_learning_srv_definitions/clearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clear-request>)))
  "Returns md5sum for a message object of type '<clear-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clear-request)))
  "Returns md5sum for a message object of type 'clear-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clear-request>)))
  "Returns full string definition for message of type '<clear-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clear-request)))
  "Returns full string definition for message of type 'clear-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clear-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'clear-request
))
;//! \htmlinclude clear-response.msg.html

(cl:defclass <clear-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass clear-response (<clear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<clear-response> is deprecated: use incremental_object_learning_srv_definitions-srv:clear-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clear-response>) ostream)
  "Serializes a message object of type '<clear-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clear-response>) istream)
  "Deserializes a message object of type '<clear-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clear-response>)))
  "Returns string type for a service object of type '<clear-response>"
  "incremental_object_learning_srv_definitions/clearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clear-response)))
  "Returns string type for a service object of type 'clear-response"
  "incremental_object_learning_srv_definitions/clearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clear-response>)))
  "Returns md5sum for a message object of type '<clear-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clear-response)))
  "Returns md5sum for a message object of type 'clear-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clear-response>)))
  "Returns full string definition for message of type '<clear-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clear-response)))
  "Returns full string definition for message of type 'clear-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clear-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'clear-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'clear)))
  'clear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'clear)))
  'clear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clear)))
  "Returns string type for a service object of type '<clear>"
  "incremental_object_learning_srv_definitions/clear")