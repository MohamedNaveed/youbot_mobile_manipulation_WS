; Auto-generated. Do not edit!


(cl:in-package segmentation_srv_definitions-srv)


;//! \htmlinclude MS_segment-request.msg.html

(cl:defclass <MS_segment-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (max_mt
    :reader max_mt
    :initarg :max_mt
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (refinement
    :reader refinement
    :initarg :refinement
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (nyu
    :reader nyu
    :initarg :nyu
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (lambda
    :reader lambda
    :initarg :lambda
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (sv_seed
    :reader sv_seed
    :initarg :sv_seed
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (sv_res
    :reader sv_res
    :initarg :sv_res
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (use_SLIC
    :reader use_SLIC
    :initarg :use_SLIC
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass MS_segment-request (<MS_segment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MS_segment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MS_segment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segmentation_srv_definitions-srv:<MS_segment-request> is deprecated: use segmentation_srv_definitions-srv:MS_segment-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:cloud-val is deprecated.  Use segmentation_srv_definitions-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'max_mt-val :lambda-list '(m))
(cl:defmethod max_mt-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:max_mt-val is deprecated.  Use segmentation_srv_definitions-srv:max_mt instead.")
  (max_mt m))

(cl:ensure-generic-function 'refinement-val :lambda-list '(m))
(cl:defmethod refinement-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:refinement-val is deprecated.  Use segmentation_srv_definitions-srv:refinement instead.")
  (refinement m))

(cl:ensure-generic-function 'nyu-val :lambda-list '(m))
(cl:defmethod nyu-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:nyu-val is deprecated.  Use segmentation_srv_definitions-srv:nyu instead.")
  (nyu m))

(cl:ensure-generic-function 'lambda-val :lambda-list '(m))
(cl:defmethod lambda-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:lambda-val is deprecated.  Use segmentation_srv_definitions-srv:lambda instead.")
  (lambda m))

(cl:ensure-generic-function 'sv_seed-val :lambda-list '(m))
(cl:defmethod sv_seed-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:sv_seed-val is deprecated.  Use segmentation_srv_definitions-srv:sv_seed instead.")
  (sv_seed m))

(cl:ensure-generic-function 'sv_res-val :lambda-list '(m))
(cl:defmethod sv_res-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:sv_res-val is deprecated.  Use segmentation_srv_definitions-srv:sv_res instead.")
  (sv_res m))

(cl:ensure-generic-function 'use_SLIC-val :lambda-list '(m))
(cl:defmethod use_SLIC-val ((m <MS_segment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:use_SLIC-val is deprecated.  Use segmentation_srv_definitions-srv:use_SLIC instead.")
  (use_SLIC m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MS_segment-request>) ostream)
  "Serializes a message object of type '<MS_segment-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_mt) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'refinement) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nyu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lambda) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sv_seed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sv_res) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'use_SLIC) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MS_segment-request>) istream)
  "Deserializes a message object of type '<MS_segment-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_mt) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'refinement) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nyu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lambda) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sv_seed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sv_res) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'use_SLIC) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MS_segment-request>)))
  "Returns string type for a service object of type '<MS_segment-request>"
  "segmentation_srv_definitions/MS_segmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MS_segment-request)))
  "Returns string type for a service object of type 'MS_segment-request"
  "segmentation_srv_definitions/MS_segmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MS_segment-request>)))
  "Returns md5sum for a message object of type '<MS_segment-request>"
  "a8aa0dde4a2a8f822d91756082ac75f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MS_segment-request)))
  "Returns md5sum for a message object of type 'MS_segment-request"
  "a8aa0dde4a2a8f822d91756082ac75f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MS_segment-request>)))
  "Returns full string definition for message of type '<MS_segment-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%std_msgs/Int32 max_mt~%std_msgs/Bool refinement~%std_msgs/Float32 nyu~%std_msgs/Float32 lambda~%std_msgs/Float32 sv_seed~%std_msgs/Float32 sv_res~%std_msgs/Bool use_SLIC~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MS_segment-request)))
  "Returns full string definition for message of type 'MS_segment-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%std_msgs/Int32 max_mt~%std_msgs/Bool refinement~%std_msgs/Float32 nyu~%std_msgs/Float32 lambda~%std_msgs/Float32 sv_seed~%std_msgs/Float32 sv_res~%std_msgs/Bool use_SLIC~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MS_segment-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_mt))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'refinement))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nyu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lambda))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sv_seed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sv_res))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'use_SLIC))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MS_segment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MS_segment-request
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':max_mt (max_mt msg))
    (cl:cons ':refinement (refinement msg))
    (cl:cons ':nyu (nyu msg))
    (cl:cons ':lambda (lambda msg))
    (cl:cons ':sv_seed (sv_seed msg))
    (cl:cons ':sv_res (sv_res msg))
    (cl:cons ':use_SLIC (use_SLIC msg))
))
;//! \htmlinclude MS_segment-response.msg.html

(cl:defclass <MS_segment-response> (roslisp-msg-protocol:ros-message)
  ((clusters_indices
    :reader clusters_indices
    :initarg :clusters_indices
    :type (cl:vector std_msgs-msg:Int32MultiArray)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32MultiArray :initial-element (cl:make-instance 'std_msgs-msg:Int32MultiArray))))
)

(cl:defclass MS_segment-response (<MS_segment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MS_segment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MS_segment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segmentation_srv_definitions-srv:<MS_segment-response> is deprecated: use segmentation_srv_definitions-srv:MS_segment-response instead.")))

(cl:ensure-generic-function 'clusters_indices-val :lambda-list '(m))
(cl:defmethod clusters_indices-val ((m <MS_segment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segmentation_srv_definitions-srv:clusters_indices-val is deprecated.  Use segmentation_srv_definitions-srv:clusters_indices instead.")
  (clusters_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MS_segment-response>) ostream)
  "Serializes a message object of type '<MS_segment-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters_indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MS_segment-response>) istream)
  "Deserializes a message object of type '<MS_segment-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MS_segment-response>)))
  "Returns string type for a service object of type '<MS_segment-response>"
  "segmentation_srv_definitions/MS_segmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MS_segment-response)))
  "Returns string type for a service object of type 'MS_segment-response"
  "segmentation_srv_definitions/MS_segmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MS_segment-response>)))
  "Returns md5sum for a message object of type '<MS_segment-response>"
  "a8aa0dde4a2a8f822d91756082ac75f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MS_segment-response)))
  "Returns md5sum for a message object of type 'MS_segment-response"
  "a8aa0dde4a2a8f822d91756082ac75f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MS_segment-response>)))
  "Returns full string definition for message of type '<MS_segment-response>"
  (cl:format cl:nil "std_msgs/Int32MultiArray[] clusters_indices~%~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MS_segment-response)))
  "Returns full string definition for message of type 'MS_segment-response"
  (cl:format cl:nil "std_msgs/Int32MultiArray[] clusters_indices~%~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MS_segment-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MS_segment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MS_segment-response
    (cl:cons ':clusters_indices (clusters_indices msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MS_segment)))
  'MS_segment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MS_segment)))
  'MS_segment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MS_segment)))
  "Returns string type for a service object of type '<MS_segment>"
  "segmentation_srv_definitions/MS_segment")