# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_tracker_srv_definitions: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_tracker_srv_definitions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv" NAME_WE)
add_custom_target(_object_tracker_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_tracker_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv" NAME_WE)
add_custom_target(_object_tracker_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_tracker_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv" NAME_WE)
add_custom_target(_object_tracker_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_tracker_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv" NAME_WE)
add_custom_target(_object_tracker_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_tracker_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv" NAME_WE)
add_custom_target(_object_tracker_srv_definitions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_tracker_srv_definitions" "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_cpp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_cpp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_cpp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_cpp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
)

### Generating Module File
_generate_module_cpp(object_tracker_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_tracker_srv_definitions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_tracker_srv_definitions_generate_messages object_tracker_srv_definitions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_cpp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_cpp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_cpp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_cpp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_cpp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_tracker_srv_definitions_gencpp)
add_dependencies(object_tracker_srv_definitions_gencpp object_tracker_srv_definitions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_tracker_srv_definitions_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_lisp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_lisp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_lisp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_lisp(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
)

### Generating Module File
_generate_module_lisp(object_tracker_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_tracker_srv_definitions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_tracker_srv_definitions_generate_messages object_tracker_srv_definitions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_lisp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_lisp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_lisp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_lisp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_lisp _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_tracker_srv_definitions_genlisp)
add_dependencies(object_tracker_srv_definitions_genlisp object_tracker_srv_definitions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_tracker_srv_definitions_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_py(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_py(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_py(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
)
_generate_srv_py(object_tracker_srv_definitions
  "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
)

### Generating Module File
_generate_module_py(object_tracker_srv_definitions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_tracker_srv_definitions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_tracker_srv_definitions_generate_messages object_tracker_srv_definitions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/cleanup.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_py _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/change_tracking_model.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_py _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/detect_and_track.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_py _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/stop_tracker.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_py _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/v4r_ros_wrappers/object_tracker_srv_definitions/srv/start_tracker.srv" NAME_WE)
add_dependencies(object_tracker_srv_definitions_generate_messages_py _object_tracker_srv_definitions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_tracker_srv_definitions_genpy)
add_dependencies(object_tracker_srv_definitions_genpy object_tracker_srv_definitions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_tracker_srv_definitions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_tracker_srv_definitions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_tracker_srv_definitions_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(object_tracker_srv_definitions_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(object_tracker_srv_definitions_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_tracker_srv_definitions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_tracker_srv_definitions_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(object_tracker_srv_definitions_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(object_tracker_srv_definitions_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_tracker_srv_definitions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_tracker_srv_definitions_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(object_tracker_srv_definitions_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(object_tracker_srv_definitions_generate_messages_py geometry_msgs_generate_messages_py)
endif()
