; Auto-generated. Do not edit!


(cl:in-package incremental_object_learning_srv_definitions-srv)


;//! \htmlinclude save_model-request.msg.html

(cl:defclass <save_model-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (models_folder
    :reader models_folder
    :initarg :models_folder
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass save_model-request (<save_model-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_model-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_model-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<save_model-request> is deprecated: use incremental_object_learning_srv_definitions-srv:save_model-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <save_model-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader incremental_object_learning_srv_definitions-srv:object_name-val is deprecated.  Use incremental_object_learning_srv_definitions-srv:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'models_folder-val :lambda-list '(m))
(cl:defmethod models_folder-val ((m <save_model-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader incremental_object_learning_srv_definitions-srv:models_folder-val is deprecated.  Use incremental_object_learning_srv_definitions-srv:models_folder instead.")
  (models_folder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_model-request>) ostream)
  "Serializes a message object of type '<save_model-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'models_folder) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_model-request>) istream)
  "Deserializes a message object of type '<save_model-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'models_folder) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_model-request>)))
  "Returns string type for a service object of type '<save_model-request>"
  "incremental_object_learning_srv_definitions/save_modelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_model-request)))
  "Returns string type for a service object of type 'save_model-request"
  "incremental_object_learning_srv_definitions/save_modelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_model-request>)))
  "Returns md5sum for a message object of type '<save_model-request>"
  "7c8027a149addfd48596c5dfccb5d5db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_model-request)))
  "Returns md5sum for a message object of type 'save_model-request"
  "7c8027a149addfd48596c5dfccb5d5db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_model-request>)))
  "Returns full string definition for message of type '<save_model-request>"
  (cl:format cl:nil "~%std_msgs/String object_name~%~%std_msgs/String models_folder~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_model-request)))
  "Returns full string definition for message of type 'save_model-request"
  (cl:format cl:nil "~%std_msgs/String object_name~%~%std_msgs/String models_folder~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_model-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'models_folder))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_model-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_model-request
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':models_folder (models_folder msg))
))
;//! \htmlinclude save_model-response.msg.html

(cl:defclass <save_model-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass save_model-response (<save_model-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_model-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_model-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name incremental_object_learning_srv_definitions-srv:<save_model-response> is deprecated: use incremental_object_learning_srv_definitions-srv:save_model-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_model-response>) ostream)
  "Serializes a message object of type '<save_model-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_model-response>) istream)
  "Deserializes a message object of type '<save_model-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_model-response>)))
  "Returns string type for a service object of type '<save_model-response>"
  "incremental_object_learning_srv_definitions/save_modelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_model-response)))
  "Returns string type for a service object of type 'save_model-response"
  "incremental_object_learning_srv_definitions/save_modelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_model-response>)))
  "Returns md5sum for a message object of type '<save_model-response>"
  "7c8027a149addfd48596c5dfccb5d5db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_model-response)))
  "Returns md5sum for a message object of type 'save_model-response"
  "7c8027a149addfd48596c5dfccb5d5db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_model-response>)))
  "Returns full string definition for message of type '<save_model-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_model-response)))
  "Returns full string definition for message of type 'save_model-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_model-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_model-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_model-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_model)))
  'save_model-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_model)))
  'save_model-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_model)))
  "Returns string type for a service object of type '<save_model>"
  "incremental_object_learning_srv_definitions/save_model")