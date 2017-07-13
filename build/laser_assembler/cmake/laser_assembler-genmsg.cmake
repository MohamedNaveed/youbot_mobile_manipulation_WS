# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laser_assembler: 0 messages, 2 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laser_assembler_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv" NAME_WE)
add_custom_target(_laser_assembler_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laser_assembler" "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv" "sensor_msgs/ChannelFloat32:sensor_msgs/PointCloud:std_msgs/Header:geometry_msgs/Point32"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv" NAME_WE)
add_custom_target(_laser_assembler_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laser_assembler" "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(laser_assembler
  "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_assembler
)
_generate_srv_cpp(laser_assembler
  "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_assembler
)

### Generating Module File
_generate_module_cpp(laser_assembler
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_assembler
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laser_assembler_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laser_assembler_generate_messages laser_assembler_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv" NAME_WE)
add_dependencies(laser_assembler_generate_messages_cpp _laser_assembler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv" NAME_WE)
add_dependencies(laser_assembler_generate_messages_cpp _laser_assembler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_assembler_gencpp)
add_dependencies(laser_assembler_gencpp laser_assembler_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_assembler_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(laser_assembler
  "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_assembler
)
_generate_srv_lisp(laser_assembler
  "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_assembler
)

### Generating Module File
_generate_module_lisp(laser_assembler
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_assembler
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laser_assembler_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laser_assembler_generate_messages laser_assembler_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv" NAME_WE)
add_dependencies(laser_assembler_generate_messages_lisp _laser_assembler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv" NAME_WE)
add_dependencies(laser_assembler_generate_messages_lisp _laser_assembler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_assembler_genlisp)
add_dependencies(laser_assembler_genlisp laser_assembler_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_assembler_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(laser_assembler
  "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_assembler
)
_generate_srv_py(laser_assembler
  "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_assembler
)

### Generating Module File
_generate_module_py(laser_assembler
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_assembler
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laser_assembler_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laser_assembler_generate_messages laser_assembler_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans.srv" NAME_WE)
add_dependencies(laser_assembler_generate_messages_py _laser_assembler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/laser_assembler/srv/AssembleScans2.srv" NAME_WE)
add_dependencies(laser_assembler_generate_messages_py _laser_assembler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_assembler_genpy)
add_dependencies(laser_assembler_genpy laser_assembler_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_assembler_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_assembler)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_assembler
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(laser_assembler_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(laser_assembler_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_assembler)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_assembler
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(laser_assembler_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(laser_assembler_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_assembler)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_assembler\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_assembler
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(laser_assembler_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(laser_assembler_generate_messages_py std_msgs_generate_messages_py)
endif()
