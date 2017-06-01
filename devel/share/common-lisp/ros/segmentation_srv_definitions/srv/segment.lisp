; Auto-generated. Do not edit!


(cl:in-package segmentation_srv_definitions-srv)


;//! \htmlinclude segment-request.msg.html

(cl:defclass <segment-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (transform
    :reader transform
    :initarg :transform
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass segment-request (<segment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <segment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'segment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segmentation_srv_definitions-srv:<segment-request> is deprecated: use segmentation_srv_definitions-srv:segment-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:cloud-val is deprecated.  Use segmentation_srv_definitions-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:transform-val is deprecated.  Use segmentation_srv_definitions-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <segment-request>) ostream)
  "Serializes a message object of type '<segment-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transform))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'transform))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <segment-request>) istream)
  "Deserializes a message object of type '<segment-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transform) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transform)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<segment-request>)))
  "Returns string type for a service object of type '<segment-request>"
  "segmentation_srv_definitions/segmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment-request)))
  "Returns string type for a service object of type 'segment-request"
  "segmentation_srv_definitions/segmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<segment-request>)))
  "Returns md5sum for a message object of type '<segment-request>"
  "7ba3ffaa20449deb1fc02a80f32310fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'segment-request)))
  "Returns md5sum for a message object of type 'segment-request"
  "7ba3ffaa20449deb1fc02a80f32310fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<segment-request>)))
  "Returns full string definition for message of type '<segment-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%~%~%~%float32[] transform~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'segment-request)))
  "Returns full string definition for message of type 'segment-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%~%~%~%float32[] transform~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <segment-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transform) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <segment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'segment-request
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':transform (transform msg))
))
;//! \htmlinclude segment-response.msg.html

(cl:defclass <segment-response> (roslisp-msg-protocol:ros-message)
  ((clusters_indices
    :reader clusters_indices
    :initarg :clusters_indices
    :type (cl:vector std_msgs-msg:Int32MultiArray)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32MultiArray :initial-element (cl:make-instance 'std_msgs-msg:Int32MultiArray))))
)

(cl:defclass segment-response (<segment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <segment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'segment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segmentation_srv_definitions-srv:<segment-response> is deprecated: use segmentation_srv_definitions-srv:segment-response instead.")))

(cl:ensure-generic-function 'clusters_indices-val :lambda-list '(m))
(cl:defmethod clusters_indices-val ((m <segment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:clusters_indices-val is deprecated.  Use segmentation_srv_definitions-srv:clusters_indices instead.")
  (clusters_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <segment-response>) ostream)
  "Serializes a message object of type '<segment-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters_indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <segment-response>) istream)
  "Deserializes a message object of type '<segment-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusters_indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusters_indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Int32MultiArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<segment-response>)))
  "Returns string type for a service object of type '<segment-response>"
  "segmentation_srv_definitions/segmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment-response)))
  "Returns string type for a service object of type 'segment-response"
  "segmentation_srv_definitions/segmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<segment-response>)))
  "Returns md5sum for a message object of type '<segment-response>"
  "7ba3ffaa20449deb1fc02a80f32310fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'segment-response)))
  "Returns md5sum for a message object of type 'segment-response"
  "7ba3ffaa20449deb1fc02a80f32310fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<segment-response>)))
  "Returns full string definition for message of type '<segment-response>"
  (cl:format cl:nil "std_msgs/Int32MultiArray[] clusters_indices~%~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'segment-response)))
  "Returns full string definition for message of type 'segment-response"
  (cl:format cl:nil "std_msgs/Int32MultiArray[] clusters_indices~%~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <segment-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <segment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'segment-response
    (cl:cons ':clusters_indices (clusters_indices msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'segment)))
  'segment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'segment)))
  'segment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment)))
  "Returns string type for a service object of type '<segment>"
  "segmentation_srv_definitions/segment")