# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "classifier_srv_definitions: 0 messages, 3 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iobject_perception_msgs:/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(classifier_srv_definitions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv" NAME_WE)
add_custom_target(_classifier_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "classifier_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv" "geometry_msgs/Point32:std_msgs/String:sensor_msgs/PointField:object_perception_msgs/classification:std_msgs/MultiArrayLayout:sensor_msgs/PointCloud2:std_msgs/Header:object_perception_msgs/BBox:std_msgs/MultiArrayDimension:std_msgs/Int32MultiArray"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv" NAME_WE)
add_custom_target(_classifier_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "classifier_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv" "geometry_msgs/Point32:std_msgs/String:sensor_msgs/PointField:object_perception_msgs/classification:std_msgs/MultiArrayLayout:sensor_msgs/PointCloud2:std_msgs/Header:object_perception_msgs/BBox:std_msgs/MultiArrayDimension:std_msgs/Int32MultiArray"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv" NAME_WE)
add_custom_target(_classifier_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "classifier_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv" "geometry_msgs/Point32:std_msgs/String:sensor_msgs/PointField:object_perception_msgs/classification:geometry_msgs/Vector3:sensor_msgs/PointCloud2:std_msgs/Header:geometry_msgs/Transform:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/BBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/classifier_srv_definitions
)
_generate_srv_cpp(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/BBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/classifier_srv_definitions
)
_generate_srv_cpp(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/classifier_srv_definitions
)

### Generating Module File
_generate_module_cpp(classifier_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/classifier_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(classifier_srv_definitions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(classifier_srv_definitions_generate_messages classifier_srv_definitions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_cpp _classifier_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_cpp _classifier_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_cpp _classifier_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(classifier_srv_definitions_gencpp)
add_dependencies(classifier_srv_definitions_gencpp classifier_srv_definitions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS classifier_srv_definitions_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/BBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/classifier_srv_definitions
)
_generate_srv_lisp(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/BBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/classifier_srv_definitions
)
_generate_srv_lisp(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/classifier_srv_definitions
)

### Generating Module File
_generate_module_lisp(classifier_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/classifier_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(classifier_srv_definitions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(classifier_srv_definitions_generate_messages classifier_srv_definitions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_lisp _classifier_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_lisp _classifier_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_lisp _classifier_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(classifier_srv_definitions_genlisp)
add_dependencies(classifier_srv_definitions_genlisp classifier_srv_definitions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS classifier_srv_definitions_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/BBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions
)
_generate_srv_py(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/BBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions
)
_generate_srv_py(classifier_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/catkin_ws/src/v4r_ros_wrappers/object_perception_msgs/msg/classification.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions
)

### Generating Module File
_generate_module_py(classifier_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(classifier_srv_definitions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(classifier_srv_definitions_generate_messages classifier_srv_definitions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/segment_and_classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_py _classifier_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_py _classifier_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/classifier_srv_definitions/srv/mv_classify.srv" NAME_WE)
add_dependencies(classifier_srv_definitions_generate_messages_py _classifier_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(classifier_srv_definitions_genpy)
add_dependencies(classifier_srv_definitions_genpy classifier_srv_definitions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS classifier_srv_definitions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/classifier_srv_definitions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/classifier_srv_definitions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(classifier_srv_definitions_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(classifier_srv_definitions_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(classifier_srv_definitions_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET object_perception_msgs_generate_messages_cpp)
  add_dependencies(classifier_srv_definitions_generate_messages_cpp object_perception_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/classifier_srv_definitions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/classifier_srv_definitions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(classifier_srv_definitions_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(classifier_srv_definitions_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(classifier_srv_definitions_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET object_perception_msgs_generate_messages_lisp)
  add_dependencies(classifier_srv_definitions_generate_messages_lisp object_perception_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/classifier_srv_definitions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(classifier_srv_definitions_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(classifier_srv_definitions_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(classifier_srv_definitions_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET object_perception_msgs_generate_messages_py)
  add_dependencies(classifier_srv_definitions_generate_messages_py object_perception_msgs_generate_messages_py)
endif()
