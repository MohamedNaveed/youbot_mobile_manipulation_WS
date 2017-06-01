; Auto-generated. Do not edit!


(cl:in-package object_tracker_msg_definitions-msg)


;//! \htmlinclude ObjectInfo.msg.html

(cl:defclass <ObjectInfo> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObjectInfo (<ObjectInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_tracker_msg_definitions-msg:<ObjectInfo> is deprecated: use object_tracker_msg_definitions-msg:ObjectInfo instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_tracker_msg_definitions-msg:translation-val is deprecated.  Use object_tracker_msg_definitions-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_tracker_msg_definitions-msg:rotation-val is deprecated.  Use object_tracker_msg_definitions-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_tracker_msg_definitions-msg:confidence-val is deprecated.  Use object_tracker_msg_definitions-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectInfo>) ostream)
  "Serializes a message object of type '<ObjectInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectInfo>) istream)
  "Deserializes a message object of type '<ObjectInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectInfo>)))
  "Returns string type for a message object of type '<ObjectInfo>"
  "object_tracker_msg_definitions/ObjectInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectInfo)))
  "Returns string type for a message object of type 'ObjectInfo"
  "object_tracker_msg_definitions/ObjectInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectInfo>)))
  "Returns md5sum for a message object of type '<ObjectInfo>"
  "fdf9fc2b5a15076288ba7c1a2a70536d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectInfo)))
  "Returns md5sum for a message object of type 'ObjectInfo"
  "fdf9fc2b5a15076288ba7c1a2a70536d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectInfo>)))
  "Returns full string definition for message of type '<ObjectInfo>"
  (cl:format cl:nil "# This represents the transform between camera and object frame in free space.~%# With the confidence of the tracking~%~%geometry_msgs/Vector3 translation~%geometry_msgs/Quaternion rotation~%~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectInfo)))
  "Returns full string definition for message of type 'ObjectInfo"
  (cl:format cl:nil "# This represents the transform between camera and object frame in free space.~%# With the confidence of the tracking~%~%geometry_msgs/Vector3 translation~%geometry_msgs/Quaternion rotation~%~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectInfo
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':confidence (confidence msg))
))
