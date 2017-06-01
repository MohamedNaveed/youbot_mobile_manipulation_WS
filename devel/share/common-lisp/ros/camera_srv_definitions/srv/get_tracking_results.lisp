; Auto-generated. Do not edit!


(cl:in-package camera_srv_definitions-srv)


;//! \htmlinclude get_tracking_results-request.msg.html

(cl:defclass <get_tracking_results-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_tracking_results-request (<get_tracking_results-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_tracking_results-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_tracking_results-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<get_tracking_results-request> is deprecated: use camera_srv_definitions-srv:get_tracking_results-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_tracking_results-request>) ostream)
  "Serializes a message object of type '<get_tracking_results-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_tracking_results-request>) istream)
  "Deserializes a message object of type '<get_tracking_results-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_tracking_results-request>)))
  "Returns string type for a service object of type '<get_tracking_results-request>"
  "camera_srv_definitions/get_tracking_resultsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_tracking_results-request)))
  "Returns string type for a service object of type 'get_tracking_results-request"
  "camera_srv_definitions/get_tracking_resultsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_tracking_results-request>)))
  "Returns md5sum for a message object of type '<get_tracking_results-request>"
  "fb26a5b4ba8d1d3eebf938716016a4fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_tracking_results-request)))
  "Returns md5sum for a message object of type 'get_tracking_results-request"
  "fb26a5b4ba8d1d3eebf938716016a4fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_tracking_results-request>)))
  "Returns full string definition for message of type '<get_tracking_results-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_tracking_results-request)))
  "Returns full string definition for message of type 'get_tracking_results-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_tracking_results-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_tracking_results-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_tracking_results-request
))
;//! \htmlinclude get_tracking_results-response.msg.html

(cl:defclass <get_tracking_results-response> (roslisp-msg-protocol:ros-message)
  ((keyframes
    :reader keyframes
    :initarg :keyframes
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform))))
)

(cl:defclass get_tracking_results-response (<get_tracking_results-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_tracking_results-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_tracking_results-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_srv_definitions-srv:<get_tracking_results-response> is deprecated: use camera_srv_definitions-srv:get_tracking_results-response instead.")))

(cl:ensure-generic-function 'keyframes-val :lambda-list '(m))
(cl:defmethod keyframes-val ((m <get_tracking_results-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_srv_definitions-srv:keyframes-val is deprecated.  Use camera_srv_definitions-srv:keyframes instead.")
  (keyframes m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <get_tracking_results-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_srv_definitions-srv:transforms-val is deprecated.  Use camera_srv_definitions-srv:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_tracking_results-response>) ostream)
  "Serializes a message object of type '<get_tracking_results-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keyframes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keyframes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_tracking_results-response>) istream)
  "Deserializes a message object of type '<get_tracking_results-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keyframes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keyframes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_tracking_results-response>)))
  "Returns string type for a service object of type '<get_tracking_results-response>"
  "camera_srv_definitions/get_tracking_resultsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_tracking_results-response)))
  "Returns string type for a service object of type 'get_tracking_results-response"
  "camera_srv_definitions/get_tracking_resultsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_tracking_results-response>)))
  "Returns md5sum for a message object of type '<get_tracking_results-response>"
  "fb26a5b4ba8d1d3eebf938716016a4fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_tracking_results-response)))
  "Returns md5sum for a message object of type 'get_tracking_results-response"
  "fb26a5b4ba8d1d3eebf938716016a4fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_tracking_results-response>)))
  "Returns full string definition for message of type '<get_tracking_results-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] keyframes~%~%geometry_msgs/Transform[] transforms~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_tracking_results-response)))
  "Returns full string definition for message of type 'get_tracking_results-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] keyframes~%~%geometry_msgs/Transform[] transforms~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_tracking_results-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keyframes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_tracking_results-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_tracking_results-response
    (cl:cons ':keyframes (keyframes msg))
    (cl:cons ':transforms (transforms msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_tracking_results)))
  'get_tracking_results-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_tracking_results)))
  'get_tracking_results-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_tracking_results)))
  "Returns string type for a service object of type '<get_tracking_results>"
  "camera_srv_definitions/get_tracking_results")