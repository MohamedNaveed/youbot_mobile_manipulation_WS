; Auto-generated. Do not edit!


(cl:in-package object_perception_msgs-msg)


;//! \htmlinclude classification.msg.html

(cl:defclass <classification> (roslisp-msg-protocol:ros-message)
  ((class_type
    :reader class_type
    :initarg :class_type
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (confidence
    :reader confidence
    :initarg :confidence
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass classification (<classification>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <classification>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'classification)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_perception_msgs-msg:<classification> is deprecated: use object_perception_msgs-msg:classification instead.")))

(cl:ensure-generic-function 'class_type-val :lambda-list '(m))
(cl:defmethod class_type-val ((m <classification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_perception_msgs-msg:class_type-val is deprecated.  Use object_perception_msgs-msg:class_type instead.")
  (class_type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <classification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_perception_msgs-msg:confidence-val is deprecated.  Use object_perception_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <classification>) ostream)
  "Serializes a message object of type '<classification>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'class_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'class_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'confidence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <classification>) istream)
  "Deserializes a message object of type '<classification>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'class_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'class_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'confidence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'confidence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<classification>)))
  "Returns string type for a message object of type '<classification>"
  "object_perception_msgs/classification")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'classification)))
  "Returns string type for a message object of type 'classification"
  "object_perception_msgs/classification")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<classification>)))
  "Returns md5sum for a message object of type '<classification>"
  "308b8cac9a8165761785459122dd097d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'classification)))
  "Returns md5sum for a message object of type 'classification"
  "308b8cac9a8165761785459122dd097d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<classification>)))
  "Returns full string definition for message of type '<classification>"
  (cl:format cl:nil "std_msgs/String[] class_type~%float32[] confidence~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'classification)))
  "Returns full string definition for message of type 'classification"
  (cl:format cl:nil "std_msgs/String[] class_type~%float32[] confidence~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <classification>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'class_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <classification>))
  "Converts a ROS message object to a list"
  (cl:list 'classification
    (cl:cons ':class_type (class_type msg))
    (cl:cons ':confidence (confidence msg))
))
