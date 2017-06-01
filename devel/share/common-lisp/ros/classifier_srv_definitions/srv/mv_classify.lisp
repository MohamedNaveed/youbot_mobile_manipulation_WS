; Auto-generated. Do not edit!


(cl:in-package classifier_srv_definitions-srv)


;//! \htmlinclude mv_classify-request.msg.html

(cl:defclass <mv_classify-request> (roslisp-msg-protocol:ros-message)
  ((session_id
    :reader session_id
    :initarg :session_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass mv_classify-request (<mv_classify-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mv_classify-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mv_classify-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name classifier_srv_definitions-srv:<mv_classify-request> is deprecated: use classifier_srv_definitions-srv:mv_classify-request instead.")))

(cl:ensure-generic-function 'session_id-val :lambda-list '(m))
(cl:defmethod session_id-val ((m <mv_classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader classifier_srv_definitions-srv:session_id-val is deprecated.  Use classifier_srv_definitions-srv:session_id instead.")
  (session_id m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <mv_classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader classifier_srv_definitions-srv:cloud-val is deprecated.  Use classifier_srv_definitions-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <mv_classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader classifier_srv_definitions-srv:transform-val is deprecated.  Use classifier_srv_definitions-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mv_classify-request>) ostream)
  "Serializes a message object of type '<mv_classify-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'session_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mv_classify-request>) istream)
  "Deserializes a message object of type '<mv_classify-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'session_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mv_classify-request>)))
  "Returns string type for a service object of type '<mv_classify-request>"
  "classifier_srv_definitions/mv_classifyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mv_classify-request)))
  "Returns string type for a service object of type 'mv_classify-request"
  "classifier_srv_definitions/mv_classifyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mv_classify-request>)))
  "Returns md5sum for a message object of type '<mv_classify-request>"
  "67bbe4821b0ec370f484928297d55f41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mv_classify-request)))
  "Returns md5sum for a message object of type 'mv_classify-request"
  "67bbe4821b0ec370f484928297d55f41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mv_classify-request>)))
  "Returns full string definition for message of type '<mv_classify-request>"
  (cl:format cl:nil "std_msgs/String session_id~%sensor_msgs/PointCloud2 cloud~%geometry_msgs/Transform transform~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mv_classify-request)))
  "Returns full string definition for message of type 'mv_classify-request"
  (cl:format cl:nil "std_msgs/String session_id~%sensor_msgs/PointCloud2 cloud~%geometry_msgs/Transform transform~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mv_classify-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'session_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mv_classify-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mv_classify-request
    (cl:cons ':session_id (session_id msg))
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':transform (transform msg))
))
;//! \htmlinclude mv_classify-response.msg.html

(cl:defclass <mv_classify-response> (roslisp-msg-protocol:ros-message)
  ((class_results
    :reader class_results
    :initarg :class_results
    :type (cl:vector object_perception_msgs-msg:classification)
   :initform (cl:make-array 0 :element-type 'object_perception_msgs-msg:classification :initial-element (cl:make-instance 'object_perception_msgs-msg:classification)))
   (centroid
    :reader centroid
    :initarg :centroid
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass mv_classify-response (<mv_classify-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mv_classify-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mv_classify-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name classifier_srv_definitions-srv:<mv_classify-response> is deprecated: use classifier_srv_definitions-srv:mv_classify-response instead.")))

(cl:ensure-generic-function 'class_results-val :lambda-list '(m))
(cl:defmethod class_results-val ((m <mv_classify-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader classifier_srv_definitions-srv:class_results-val is deprecated.  Use classifier_srv_definitions-srv:class_results instead.")
  (class_results m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <mv_classify-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader classifier_srv_definitions-srv:centroid-val is deprecated.  Use classifier_srv_definitions-srv:centroid instead.")
  (centroid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mv_classify-response>) ostream)
  "Serializes a message object of type '<mv_classify-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'class_results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'class_results))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'centroid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'centroid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mv_classify-response>) istream)
  "Deserializes a message object of type '<mv_classify-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'class_results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'class_results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_perception_msgs-msg:classification))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'centroid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'centroid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mv_classify-response>)))
  "Returns string type for a service object of type '<mv_classify-response>"
  "classifier_srv_definitions/mv_classifyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mv_classify-response)))
  "Returns string type for a service object of type 'mv_classify-response"
  "classifier_srv_definitions/mv_classifyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mv_classify-response>)))
  "Returns md5sum for a message object of type '<mv_classify-response>"
  "67bbe4821b0ec370f484928297d55f41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mv_classify-response)))
  "Returns md5sum for a message object of type 'mv_classify-response"
  "67bbe4821b0ec370f484928297d55f41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mv_classify-response>)))
  "Returns full string definition for message of type '<mv_classify-response>"
  (cl:format cl:nil "~%object_perception_msgs/classification[] class_results~%~%~%geometry_msgs/Point32[] centroid~%~%~%================================================================================~%MSG: object_perception_msgs/classification~%std_msgs/String[] class_type~%float32[] confidence~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mv_classify-response)))
  "Returns full string definition for message of type 'mv_classify-response"
  (cl:format cl:nil "~%object_perception_msgs/classification[] class_results~%~%~%geometry_msgs/Point32[] centroid~%~%~%================================================================================~%MSG: object_perception_msgs/classification~%std_msgs/String[] class_type~%float32[] confidence~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mv_classify-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'class_results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'centroid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mv_classify-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mv_classify-response
    (cl:cons ':class_results (class_results msg))
    (cl:cons ':centroid (centroid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mv_classify)))
  'mv_classify-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mv_classify)))
  'mv_classify-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mv_classify)))
  "Returns string type for a service object of type '<mv_classify>"
  "classifier_srv_definitions/mv_classify")