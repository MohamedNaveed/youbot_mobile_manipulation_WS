; Auto-generated. Do not edit!


(cl:in-package camera_srv_definitions-srv)


;//! \htmlinclude visualize_compound-request.msg.html

(cl:defclass <visualize_compound-request> (roslisp-msg-protocol:ros-message)
  ((do_ba
    :reader do_ba
    :initarg :do_ba
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass visualize_compound-request (<visualize_compound-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_compound-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_compound-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<visualize_compound-request> is deprecated: use camera_srv_definitions-srv:visualize_compound-request instead.")))

(cl:ensure-generic-function 'do_ba-val :lambda-list '(m))
(cl:defmethod do_ba-val ((m <visualize_compound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_srv_definitions-srv:do_ba-val is deprecated.  Use camera_srv_definitions-srv:do_ba instead.")
  (do_ba m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_compound-request>) ostream)
  "Serializes a message object of type '<visualize_compound-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'do_ba) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_compound-request>) istream)
  "Deserializes a message object of type '<visualize_compound-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'do_ba) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_compound-request>)))
  "Returns string type for a service object of type '<visualize_compound-request>"
  "camera_srv_definitions/visualize_compoundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_compound-request)))
  "Returns string type for a service object of type 'visualize_compound-request"
  "camera_srv_definitions/visualize_compoundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_compound-request>)))
  "Returns md5sum for a message object of type '<visualize_compound-request>"
  "3e4836b712c6ddd8441b7c4e40288ca4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_compound-request)))
  "Returns md5sum for a message object of type 'visualize_compound-request"
  "3e4836b712c6ddd8441b7c4e40288ca4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_compound-request>)))
  "Returns full string definition for message of type '<visualize_compound-request>"
  (cl:format cl:nil "std_msgs/Int32 do_ba~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_compound-request)))
  "Returns full string definition for message of type 'visualize_compound-request"
  (cl:format cl:nil "std_msgs/Int32 do_ba~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_compound-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'do_ba))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_compound-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_compound-request
    (cl:cons ':do_ba (do_ba msg))
))
;//! \htmlinclude visualize_compound-response.msg.html

(cl:defclass <visualize_compound-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_compound-response (<visualize_compound-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_compound-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_compound-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<visualize_compound-response> is deprecated: use camera_srv_definitions-srv:visualize_compound-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_compound-response>) ostream)
  "Serializes a message object of type '<visualize_compound-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_compound-response>) istream)
  "Deserializes a message object of type '<visualize_compound-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_compound-response>)))
  "Returns string type for a service object of type '<visualize_compound-response>"
  "camera_srv_definitions/visualize_compoundResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_compound-response)))
  "Returns string type for a service object of type 'visualize_compound-response"
  "camera_srv_definitions/visualize_compoundResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_compound-response>)))
  "Returns md5sum for a message object of type '<visualize_compound-response>"
  "3e4836b712c6ddd8441b7c4e40288ca4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_compound-response)))
  "Returns md5sum for a message object of type 'visualize_compound-response"
  "3e4836b712c6ddd8441b7c4e40288ca4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_compound-response>)))
  "Returns full string definition for message of type '<visualize_compound-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_compound-response)))
  "Returns full string definition for message of type 'visualize_compound-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_compound-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_compound-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_compound-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visualize_compound)))
  'visualize_compound-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visualize_compound)))
  'visualize_compound-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_compound)))
  "Returns string type for a service object of type '<visualize_compound>"
  "camera_srv_definitions/visualize_compound")