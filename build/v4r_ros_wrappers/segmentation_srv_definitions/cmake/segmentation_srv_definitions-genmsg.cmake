# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "segmentation_srv_definitions: 0 messages, 2 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(segmentation_srv_definitions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv" NAME_WE)
add_custom_target(_segmentation_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "segmentation_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv" "sensor_msgs/PointField:std_msgs/MultiArrayLayout:sensor_msgs/PointCloud2:std_msgs/Header:std_msgs/MultiArrayDimension:std_msgs/Int32MultiArray"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv" NAME_WE)
add_custom_target(_segmentation_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "segmentation_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv" "sensor_msgs/PointField:std_msgs/MultiArrayLayout:std_msgs/Float32:sensor_msgs/PointCloud2:std_msgs/Header:std_msgs/MultiArrayDimension:std_msgs/Int32:std_msgs/Int32MultiArray:std_msgs/Bool"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(segmentation_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/segmentation_srv_definitions
)
_generate_srv_cpp(segmentation_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/segmentation_srv_definitions
)

### Generating Module File
_generate_module_cpp(segmentation_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/segmentation_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(segmentation_srv_definitions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(segmentation_srv_definitions_generate_messages segmentation_srv_definitions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv" NAME_WE)
add_dependencies(segmentation_srv_definitions_generate_messages_cpp _segmentation_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv" NAME_WE)
add_dependencies(segmentation_srv_definitions_generate_messages_cpp _segmentation_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(segmentation_srv_definitions_gencpp)
add_dependencies(segmentation_srv_definitions_gencpp segmentation_srv_definitions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS segmentation_srv_definitions_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(segmentation_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/segmentation_srv_definitions
)
_generate_srv_lisp(segmentation_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/segmentation_srv_definitions
)

### Generating Module File
_generate_module_lisp(segmentation_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/segmentation_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(segmentation_srv_definitions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(segmentation_srv_definitions_generate_messages segmentation_srv_definitions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv" NAME_WE)
add_dependencies(segmentation_srv_definitions_generate_messages_lisp _segmentation_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv" NAME_WE)
add_dependencies(segmentation_srv_definitions_generate_messages_lisp _segmentation_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(segmentation_srv_definitions_genlisp)
add_dependencies(segmentation_srv_definitions_genlisp segmentation_srv_definitions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS segmentation_srv_definitions_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(segmentation_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/segmentation_srv_definitions
)
_generate_srv_py(segmentation_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/segmentation_srv_definitions
)

### Generating Module File
_generate_module_py(segmentation_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/segmentation_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(segmentation_srv_definitions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(segmentation_srv_definitions_generate_messages segmentation_srv_definitions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/segment.srv" NAME_WE)
add_dependencies(segmentation_srv_definitions_generate_messages_py _segmentation_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/segmentation_srv_definitions/srv/MS_segment.srv" NAME_WE)
add_dependencies(segmentation_srv_definitions_generate_messages_py _segmentation_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(segmentation_srv_definitions_genpy)
add_dependencies(segmentation_srv_definitions_genpy segmentation_srv_definitions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS segmentation_srv_definitions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/segmentation_srv_definitions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/segmentation_srv_definitions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(segmentation_srv_definitions_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(segmentation_srv_definitions_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/segmentation_srv_definitions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/segmentation_srv_definitions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(segmentation_srv_definitions_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(segmentation_srv_definitions_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/segmentation_srv_definitions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/segmentation_srv_definitions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/segmentation_srv_definitions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(segmentation_srv_definitions_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(segmentation_srv_definitions_generate_messages_py std_msgs_generate_messages_py)
endif()
