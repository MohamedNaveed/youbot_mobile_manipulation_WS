; Auto-generated. Do not edit!


(cl:in-package ros_to_cv_v2-msg)


;//! \htmlinclude Center.msg.html

(cl:defclass <Center> (roslisp-msg-protocol:ros-message)
  ((y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Center (<Center>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Center>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Center)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_to_cv_v2-msg:<Center> is deprecated: use ros_to_cv_v2-msg:Center instead.")))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Center>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_to_cv_v2-msg:y-val is deprecated.  Use ros_to_cv_v2-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Center>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_to_cv_v2-msg:x-val is deprecated.  Use ros_to_cv_v2-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Center>) ostream)
  "Serializes a message object of type '<Center>"
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Center>) istream)
  "Deserializes a message object of type '<Center>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Center>)))
  "Returns string type for a message object of type '<Center>"
  "ros_to_cv_v2/Center")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Center)))
  "Returns string type for a message object of type 'Center"
  "ros_to_cv_v2/Center")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Center>)))
  "Returns md5sum for a message object of type '<Center>"
  "509e6e8bf3c31440edeabf90a4adbb14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Center)))
  "Returns md5sum for a message object of type 'Center"
  "509e6e8bf3c31440edeabf90a4adbb14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Center>)))
  "Returns full string definition for message of type '<Center>"
  (cl:format cl:nil "int16 y ~%int16 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Center)))
  "Returns full string definition for message of type 'Center"
  (cl:format cl:nil "int16 y ~%int16 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Center>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Center>))
  "Converts a ROS message object to a list"
  (cl:list 'Center
    (cl:cons ':y (y msg))
    (cl:cons ':x (x msg))
))
