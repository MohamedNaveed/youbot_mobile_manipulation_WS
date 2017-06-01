; Auto-generated. Do not edit!


(cl:in-package object_tracker_srv_definitions-srv)


;//! \htmlinclude detect_and_track-request.msg.html

(cl:defclass <detect_and_track-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass detect_and_track-request (<detect_and_track-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detect_and_track-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detect_and_track-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<detect_and_track-request> is deprecated: use object_tracker_srv_definitions-srv:detect_and_track-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <detect_and_track-request>) ostream)
  "Serializes a message object of type '<detect_and_track-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <detect_and_track-request>) istream)
  "Deserializes a message object of type '<detect_and_track-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detect_and_track-request>)))
  "Returns string type for a service object of type '<detect_and_track-request>"
  "object_tracker_srv_definitions/detect_and_trackRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detect_and_track-request)))
  "Returns string type for a service object of type 'detect_and_track-request"
  "object_tracker_srv_definitions/detect_and_trackRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detect_and_track-request>)))
  "Returns md5sum for a message object of type '<detect_and_track-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detect_and_track-request)))
  "Returns md5sum for a message object of type 'detect_and_track-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detect_and_track-request>)))
  "Returns full string definition for message of type '<detect_and_track-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detect_and_track-request)))
  "Returns full string definition for message of type 'detect_and_track-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detect_and_track-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detect_and_track-request>))
  "Converts a ROS message object to a list"
  (cl:list 'detect_and_track-request
))
;//! \htmlinclude detect_and_track-response.msg.html

(cl:defclass <detect_and_track-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass detect_and_track-response (<detect_and_track-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detect_and_track-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detect_and_track-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_srv_definitions-srv:<detect_and_track-response> is deprecated: use object_tracker_srv_definitions-srv:detect_and_track-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <detect_and_track-response>) ostream)
  "Serializes a message object of type '<detect_and_track-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <detect_and_track-response>) istream)
  "Deserializes a message object of type '<detect_and_track-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detect_and_track-response>)))
  "Returns string type for a service object of type '<detect_and_track-response>"
  "object_tracker_srv_definitions/detect_and_trackResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detect_and_track-response)))
  "Returns string type for a service object of type 'detect_and_track-response"
  "object_tracker_srv_definitions/detect_and_trackResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detect_and_track-response>)))
  "Returns md5sum for a message object of type '<detect_and_track-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detect_and_track-response)))
  "Returns md5sum for a message object of type 'detect_and_track-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detect_and_track-response>)))
  "Returns full string definition for message of type '<detect_and_track-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detect_and_track-response)))
  "Returns full string definition for message of type 'detect_and_track-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detect_and_track-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detect_and_track-response>))
  "Converts a ROS message object to a list"
  (cl:list 'detect_and_track-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'detect_and_track)))
  'detect_and_track-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'detect_and_track)))
  'detect_and_track-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detect_and_track)))
  "Returns string type for a service object of type '<detect_and_track>"
  "object_tracker_srv_definitions/detect_and_track")