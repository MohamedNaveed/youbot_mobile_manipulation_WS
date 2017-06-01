# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_to_cv_v2: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iros_to_cv_v2:/home/ros/catkin_ws/src/ros_to_cv_v2/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_to_cv_v2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg" NAME_WE)
add_custom_target(_ros_to_cv_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_to_cv_v2" "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_to_cv_v2
  "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_to_cv_v2
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_to_cv_v2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_to_cv_v2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_to_cv_v2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_to_cv_v2_generate_messages ros_to_cv_v2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg" NAME_WE)
add_dependencies(ros_to_cv_v2_generate_messages_cpp _ros_to_cv_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_to_cv_v2_gencpp)
add_dependencies(ros_to_cv_v2_gencpp ros_to_cv_v2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_to_cv_v2_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_to_cv_v2
  "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_to_cv_v2
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_to_cv_v2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_to_cv_v2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_to_cv_v2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_to_cv_v2_generate_messages ros_to_cv_v2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg" NAME_WE)
add_dependencies(ros_to_cv_v2_generate_messages_lisp _ros_to_cv_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_to_cv_v2_genlisp)
add_dependencies(ros_to_cv_v2_genlisp ros_to_cv_v2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_to_cv_v2_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_to_cv_v2
  "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_to_cv_v2
)

### Generating Services

### Generating Module File
_generate_module_py(ros_to_cv_v2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_to_cv_v2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_to_cv_v2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_to_cv_v2_generate_messages ros_to_cv_v2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/ros_to_cv_v2/msg/Center.msg" NAME_WE)
add_dependencies(ros_to_cv_v2_generate_messages_py _ros_to_cv_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_to_cv_v2_genpy)
add_dependencies(ros_to_cv_v2_genpy ros_to_cv_v2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_to_cv_v2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_to_cv_v2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_to_cv_v2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_to_cv_v2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_to_cv_v2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_to_cv_v2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_to_cv_v2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_to_cv_v2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_to_cv_v2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_to_cv_v2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_to_cv_v2_generate_messages_py std_msgs_generate_messages_py)
endif()
