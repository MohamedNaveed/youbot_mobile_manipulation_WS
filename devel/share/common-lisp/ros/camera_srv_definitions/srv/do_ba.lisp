; Auto-generated. Do not edit!


(cl:in-package camera_srv_definitions-srv)


;//! \htmlinclude do_ba-request.msg.html

(cl:defclass <do_ba-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass do_ba-request (<do_ba-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <do_ba-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'do_ba-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<do_ba-request> is deprecated: use camera_srv_definitions-srv:do_ba-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <do_ba-request>) ostream)
  "Serializes a message object of type '<do_ba-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <do_ba-request>) istream)
  "Deserializes a message object of type '<do_ba-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<do_ba-request>)))
  "Returns string type for a service object of type '<do_ba-request>"
  "camera_srv_definitions/do_baRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'do_ba-request)))
  "Returns string type for a service object of type 'do_ba-request"
  "camera_srv_definitions/do_baRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<do_ba-request>)))
  "Returns md5sum for a message object of type '<do_ba-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'do_ba-request)))
  "Returns md5sum for a message object of type 'do_ba-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<do_ba-request>)))
  "Returns full string definition for message of type '<do_ba-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'do_ba-request)))
  "Returns full string definition for message of type 'do_ba-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <do_ba-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <do_ba-request>))
  "Converts a ROS message object to a list"
  (cl:list 'do_ba-request
))
;//! \htmlinclude do_ba-response.msg.html

(cl:defclass <do_ba-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass do_ba-response (<do_ba-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <do_ba-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'do_ba-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<do_ba-response> is deprecated: use camera_srv_definitions-srv:do_ba-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <do_ba-response>) ostream)
  "Serializes a message object of type '<do_ba-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <do_ba-response>) istream)
  "Deserializes a message object of type '<do_ba-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<do_ba-response>)))
  "Returns string type for a service object of type '<do_ba-response>"
  "camera_srv_definitions/do_baResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'do_ba-response)))
  "Returns string type for a service object of type 'do_ba-response"
  "camera_srv_definitions/do_baResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<do_ba-response>)))
  "Returns md5sum for a message object of type '<do_ba-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'do_ba-response)))
  "Returns md5sum for a message object of type 'do_ba-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<do_ba-response>)))
  "Returns full string definition for message of type '<do_ba-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'do_ba-response)))
  "Returns full string definition for message of type 'do_ba-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <do_ba-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <do_ba-response>))
  "Converts a ROS message object to a list"
  (cl:list 'do_ba-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'do_ba)))
  'do_ba-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'do_ba)))
  'do_ba-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'do_ba)))
  "Returns string type for a service object of type '<do_ba>"
  "camera_srv_definitions/do_ba")