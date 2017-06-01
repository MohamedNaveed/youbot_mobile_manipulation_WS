; Auto-generated. Do not edit!


(cl:in-package incremental_object_learning_srv_definitions-srv)


;//! \htmlinclude learn_object_inc-request.msg.html

(cl:defclass <learn_object_inc-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (object_indices
    :reader object_indices
    :initarg :object_indices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass learn_object_inc-request (<learn_object_inc-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <learn_object_inc-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'learn_object_inc-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<learn_object_inc-request> is deprecated: use incremental_object_learning_srv_definitions-srv:learn_object_inc-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <learn_object_inc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader incremental_object_learning_srv_definitions-srv:cloud-val is deprecated.  Use incremental_object_learning_srv_definitions-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <learn_object_inc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader incremental_object_learning_srv_definitions-srv:transform-val is deprecated.  Use incremental_object_learning_srv_definitions-srv:transform instead.")
  (transform m))

(cl:ensure-generic-function 'object_indices-val :lambda-list '(m))
(cl:defmethod object_indices-val ((m <learn_object_inc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader incremental_object_learning_srv_definitions-srv:object_indices-val is deprecated.  Use incremental_object_learning_srv_definitions-srv:object_indices instead.")
  (object_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <learn_object_inc-request>) ostream)
  "Serializes a message object of type '<learn_object_inc-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'object_indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <learn_object_inc-request>) istream)
  "Deserializes a message object of type '<learn_object_inc-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<learn_object_inc-request>)))
  "Returns string type for a service object of type '<learn_object_inc-request>"
  "incremental_object_learning_srv_definitions/learn_object_incRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'learn_object_inc-request)))
  "Returns string type for a service object of type 'learn_object_inc-request"
  "incremental_object_learning_srv_definitions/learn_object_incRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<learn_object_inc-request>)))
  "Returns md5sum for a message object of type '<learn_object_inc-request>"
  "c22326b5af8643bca97132dd41d1c7fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'learn_object_inc-request)))
  "Returns md5sum for a message object of type 'learn_object_inc-request"
  "c22326b5af8643bca97132dd41d1c7fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<learn_object_inc-request>)))
  "Returns full string definition for message of type '<learn_object_inc-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%geometry_msgs/Transform transform~%~%int32[] object_indices~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'learn_object_inc-request)))
  "Returns full string definition for message of type 'learn_object_inc-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%geometry_msgs/Transform transform~%~%int32[] object_indices~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <learn_object_inc-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <learn_object_inc-request>))
  "Converts a ROS message object to a list"
  (cl:list 'learn_object_inc-request
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':object_indices (object_indices msg))
))
;//! \htmlinclude learn_object_inc-response.msg.html

(cl:defclass <learn_object_inc-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass learn_object_inc-response (<learn_object_inc-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <learn_object_inc-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'learn_object_inc-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<learn_object_inc-response> is deprecated: use incremental_object_learning_srv_definitions-srv:learn_object_inc-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <learn_object_inc-response>) ostream)
  "Serializes a message object of type '<learn_object_inc-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <learn_object_inc-response>) istream)
  "Deserializes a message object of type '<learn_object_inc-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<learn_object_inc-response>)))
  "Returns string type for a service object of type '<learn_object_inc-response>"
  "incremental_object_learning_srv_definitions/learn_object_incResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'learn_object_inc-response)))
  "Returns string type for a service object of type 'learn_object_inc-response"
  "incremental_object_learning_srv_definitions/learn_object_incResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<learn_object_inc-response>)))
  "Returns md5sum for a message object of type '<learn_object_inc-response>"
  "c22326b5af8643bca97132dd41d1c7fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'learn_object_inc-response)))
  "Returns md5sum for a message object of type 'learn_object_inc-response"
  "c22326b5af8643bca97132dd41d1c7fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<learn_object_inc-response>)))
  "Returns full string definition for message of type '<learn_object_inc-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'learn_object_inc-response)))
  "Returns full string definition for message of type 'learn_object_inc-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <learn_object_inc-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <learn_object_inc-response>))
  "Converts a ROS message object to a list"
  (cl:list 'learn_object_inc-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'learn_object_inc)))
  'learn_object_inc-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'learn_object_inc)))
  'learn_object_inc-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'learn_object_inc)))
  "Returns string type for a service object of type '<learn_object_inc>"
  "incremental_object_learning_srv_definitions/learn_object_inc")