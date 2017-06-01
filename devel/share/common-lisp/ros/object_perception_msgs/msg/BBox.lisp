; Auto-generated. Do not edit!


(cl:in-package object_perception_msgs-msg)


;//! \htmlinclude BBox.msg.html

(cl:defclass <BBox> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass BBox (<BBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_perception_msgs-msg:<BBox> is deprecated: use object_perception_msgs-msg:BBox instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <BBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_perception_msgs-msg:point-val is deprecated.  Use object_perception_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BBox>) ostream)
  "Serializes a message object of type '<BBox>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BBox>) istream)
  "Deserializes a message object of type '<BBox>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BBox>)))
  "Returns string type for a message object of type '<BBox>"
  "object_perception_msgs/BBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BBox)))
  "Returns string type for a message object of type 'BBox"
  "object_perception_msgs/BBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BBox>)))
  "Returns md5sum for a message object of type '<BBox>"
  "6d78ec3ba0a94cecdadde51ecaf26ca2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BBox)))
  "Returns md5sum for a message object of type 'BBox"
  "6d78ec3ba0a94cecdadde51ecaf26ca2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BBox>)))
  "Returns full string definition for message of type '<BBox>"
  (cl:format cl:nil "# 8 points of the bounding box~%geometry_msgs/Point32[] point~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BBox)))
  "Returns full string definition for message of type 'BBox"
  (cl:format cl:nil "# 8 points of the bounding box~%geometry_msgs/Point32[] point~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BBox>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BBox>))
  "Converts a ROS message object to a list"
  (cl:list 'BBox
    (cl:cons ':point (point msg))
))
