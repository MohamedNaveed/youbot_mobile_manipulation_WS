; Auto-generated. Do not edit!


(cl:in-package incremental_object_learning_srv_definitions-srv)


;//! \htmlinclude visualize-request.msg.html

(cl:defclass <visualize-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize-request (<visualize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<visualize-request> is deprecated: use incremental_object_learning_srv_definitions-srv:visualize-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize-request>) ostream)
  "Serializes a message object of type '<visualize-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize-request>) istream)
  "Deserializes a message object of type '<visualize-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize-request>)))
  "Returns string type for a service object of type '<visualize-request>"
  "incremental_object_learning_srv_definitions/visualizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize-request)))
  "Returns string type for a service object of type 'visualize-request"
  "incremental_object_learning_srv_definitions/visualizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize-request>)))
  "Returns md5sum for a message object of type '<visualize-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize-request)))
  "Returns md5sum for a message object of type 'visualize-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize-request>)))
  "Returns full string definition for message of type '<visualize-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize-request)))
  "Returns full string definition for message of type 'visualize-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize-request
))
;//! \htmlinclude visualize-response.msg.html

(cl:defclass <visualize-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize-response (<visualize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<visualize-response> is deprecated: use incremental_object_learning_srv_definitions-srv:visualize-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize-response>) ostream)
  "Serializes a message object of type '<visualize-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize-response>) istream)
  "Deserializes a message object of type '<visualize-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize-response>)))
  "Returns string type for a service object of type '<visualize-response>"
  "incremental_object_learning_srv_definitions/visualizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize-response)))
  "Returns string type for a service object of type 'visualize-response"
  "incremental_object_learning_srv_definitions/visualizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize-response>)))
  "Returns md5sum for a message object of type '<visualize-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize-response)))
  "Returns md5sum for a message object of type 'visualize-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize-response>)))
  "Returns full string definition for message of type '<visualize-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize-response)))
  "Returns full string definition for message of type 'visualize-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visualize)))
  'visualize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visualize)))
  'visualize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize)))
  "Returns string type for a service object of type '<visualize>"
  "incremental_object_learning_srv_definitions/visualize")