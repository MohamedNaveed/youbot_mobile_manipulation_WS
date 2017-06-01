; Auto-generated. Do not edit!


(cl:in-package object_tracker_srv_definitions-srv)


;//! \htmlinclude stop_tracker-request.msg.html

(cl:defclass <stop_tracker-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop_tracker-request (<stop_tracker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_tracker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_tracker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<stop_tracker-request> is deprecated: use object_tracker_srv_definitions-srv:stop_tracker-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_tracker-request>) ostream)
  "Serializes a message object of type '<stop_tracker-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_tracker-request>) istream)
  "Deserializes a message object of type '<stop_tracker-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_tracker-request>)))
  "Returns string type for a service object of type '<stop_tracker-request>"
  "object_tracker_srv_definitions/stop_trackerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_tracker-request)))
  "Returns string type for a service object of type 'stop_tracker-request"
  "object_tracker_srv_definitions/stop_trackerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_tracker-request>)))
  "Returns md5sum for a message object of type '<stop_tracker-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_tracker-request)))
  "Returns md5sum for a message object of type 'stop_tracker-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_tracker-request>)))
  "Returns full string definition for message of type '<stop_tracker-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_tracker-request)))
  "Returns full string definition for message of type 'stop_tracker-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_tracker-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_tracker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_tracker-request
))
;//! \htmlinclude stop_tracker-response.msg.html

(cl:defclass <stop_tracker-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop_tracker-response (<stop_tracker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_tracker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_tracker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<stop_tracker-response> is deprecated: use object_tracker_srv_definitions-srv:stop_tracker-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_tracker-response>) ostream)
  "Serializes a message object of type '<stop_tracker-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_tracker-response>) istream)
  "Deserializes a message object of type '<stop_tracker-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_tracker-response>)))
  "Returns string type for a service object of type '<stop_tracker-response>"
  "object_tracker_srv_definitions/stop_trackerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_tracker-response)))
  "Returns string type for a service object of type 'stop_tracker-response"
  "object_tracker_srv_definitions/stop_trackerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_tracker-response>)))
  "Returns md5sum for a message object of type '<stop_tracker-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_tracker-response)))
  "Returns md5sum for a message object of type 'stop_tracker-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_tracker-response>)))
  "Returns full string definition for message of type '<stop_tracker-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_tracker-response)))
  "Returns full string definition for message of type 'stop_tracker-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_tracker-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_tracker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_tracker-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stop_tracker)))
  'stop_tracker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stop_tracker)))
  'stop_tracker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_tracker)))
  "Returns string type for a service object of type '<stop_tracker>"
  "object_tracker_srv_definitions/stop_tracker")