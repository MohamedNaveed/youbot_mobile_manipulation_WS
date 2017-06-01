; Auto-generated. Do not edit!


(cl:in-package recognition_srv_definitions-srv)


;//! \htmlinclude retrain_recognizer-request.msg.html

(cl:defclass <retrain_recognizer-request> (roslisp-msg-protocol:ros-message)
  ((load_ids
    :reader load_ids
    :initarg :load_ids
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass retrain_recognizer-request (<retrain_recognizer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <retrain_recognizer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'retrain_recognizer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recognition_srv_definitions-srv:<retrain_recognizer-request> is deprecated: use recognition_srv_definitions-srv:retrain_recognizer-request instead.")))

(cl:ensure-generic-function 'load_ids-val :lambda-list '(m))
(cl:defmethod load_ids-val ((m <retrain_recognizer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recognition_srv_definitions-srv:load_ids-val is deprecated.  Use recognition_srv_definitions-srv:load_ids instead.")
  (load_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <retrain_recognizer-request>) ostream)
  "Serializes a message object of type '<retrain_recognizer-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'load_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'load_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <retrain_recognizer-request>) istream)
  "Deserializes a message object of type '<retrain_recognizer-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'load_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'load_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<retrain_recognizer-request>)))
  "Returns string type for a service object of type '<retrain_recognizer-request>"
  "recognition_srv_definitions/retrain_recognizerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'retrain_recognizer-request)))
  "Returns string type for a service object of type 'retrain_recognizer-request"
  "recognition_srv_definitions/retrain_recognizerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<retrain_recognizer-request>)))
  "Returns md5sum for a message object of type '<retrain_recognizer-request>"
  "68f1a1137280e26bfbb288099ac3fce1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'retrain_recognizer-request)))
  "Returns md5sum for a message object of type 'retrain_recognizer-request"
  "68f1a1137280e26bfbb288099ac3fce1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<retrain_recognizer-request>)))
  "Returns full string definition for message of type '<retrain_recognizer-request>"
  (cl:format cl:nil "~%std_msgs/String[] load_ids~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'retrain_recognizer-request)))
  "Returns full string definition for message of type 'retrain_recognizer-request"
  (cl:format cl:nil "~%std_msgs/String[] load_ids~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <retrain_recognizer-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'load_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <retrain_recognizer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'retrain_recognizer-request
    (cl:cons ':load_ids (load_ids msg))
))
;//! \htmlinclude retrain_recognizer-response.msg.html

(cl:defclass <retrain_recognizer-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass retrain_recognizer-response (<retrain_recognizer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <retrain_recognizer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'retrain_recognizer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recognition_srv_definitions-srv:<retrain_recognizer-response> is deprecated: use recognition_srv_definitions-srv:retrain_recognizer-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <retrain_recognizer-response>) ostream)
  "Serializes a message object of type '<retrain_recognizer-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <retrain_recognizer-response>) istream)
  "Deserializes a message object of type '<retrain_recognizer-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<retrain_recognizer-response>)))
  "Returns string type for a service object of type '<retrain_recognizer-response>"
  "recognition_srv_definitions/retrain_recognizerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'retrain_recognizer-response)))
  "Returns string type for a service object of type 'retrain_recognizer-response"
  "recognition_srv_definitions/retrain_recognizerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<retrain_recognizer-response>)))
  "Returns md5sum for a message object of type '<retrain_recognizer-response>"
  "68f1a1137280e26bfbb288099ac3fce1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'retrain_recognizer-response)))
  "Returns md5sum for a message object of type 'retrain_recognizer-response"
  "68f1a1137280e26bfbb288099ac3fce1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<retrain_recognizer-response>)))
  "Returns full string definition for message of type '<retrain_recognizer-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'retrain_recognizer-response)))
  "Returns full string definition for message of type 'retrain_recognizer-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <retrain_recognizer-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <retrain_recognizer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'retrain_recognizer-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'retrain_recognizer)))
  'retrain_recognizer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'retrain_recognizer)))
  'retrain_recognizer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'retrain_recognizer)))
  "Returns string type for a service object of type '<retrain_recognizer>"
  "recognition_srv_definitions/retrain_recognizer")