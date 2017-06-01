; Auto-generated. Do not edit!


(cl:in-package object_tracker_srv_definitions-srv)


;//! \htmlinclude start_tracker-request.msg.html

(cl:defclass <start_tracker-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass start_tracker-request (<start_tracker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_tracker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_tracker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<start_tracker-request> is deprecated: use object_tracker_srv_definitions-srv:start_tracker-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_tracker-request>) ostream)
  "Serializes a message object of type '<start_tracker-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_tracker-request>) istream)
  "Deserializes a message object of type '<start_tracker-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_tracker-request>)))
  "Returns string type for a service object of type '<start_tracker-request>"
  "object_tracker_srv_definitions/start_trackerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_tracker-request)))
  "Returns string type for a service object of type 'start_tracker-request"
  "object_tracker_srv_definitions/start_trackerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_tracker-request>)))
  "Returns md5sum for a message object of type '<start_tracker-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_tracker-request)))
  "Returns md5sum for a message object of type 'start_tracker-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_tracker-request>)))
  "Returns full string definition for message of type '<start_tracker-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_tracker-request)))
  "Returns full string definition for message of type 'start_tracker-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_tracker-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_tracker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_tracker-request
))
;//! \htmlinclude start_tracker-response.msg.html

(cl:defclass <start_tracker-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass start_tracker-response (<start_tracker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_tracker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_tracker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<start_tracker-response> is deprecated: use object_tracker_srv_definitions-srv:start_tracker-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_tracker-response>) ostream)
  "Serializes a message object of type '<start_tracker-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_tracker-response>) istream)
  "Deserializes a message object of type '<start_tracker-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_tracker-response>)))
  "Returns string type for a service object of type '<start_tracker-response>"
  "object_tracker_srv_definitions/start_trackerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_tracker-response)))
  "Returns string type for a service object of type 'start_tracker-response"
  "object_tracker_srv_definitions/start_trackerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_tracker-response>)))
  "Returns md5sum for a message object of type '<start_tracker-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_tracker-response)))
  "Returns md5sum for a message object of type 'start_tracker-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_tracker-response>)))
  "Returns full string definition for message of type '<start_tracker-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_tracker-response)))
  "Returns full string definition for message of type 'start_tracker-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_tracker-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_tracker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_tracker-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_tracker)))
  'start_tracker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_tracker)))
  'start_tracker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_tracker)))
  "Returns string type for a service object of type '<start_tracker>"
  "object_tracker_srv_definitions/start_tracker")