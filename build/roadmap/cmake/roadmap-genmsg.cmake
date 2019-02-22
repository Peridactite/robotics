# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roadmap: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iroadmap:/home/turtlebot/catkin_ws/src/roadmap/msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roadmap_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" NAME_WE)
add_custom_target(_roadmap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roadmap" "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" "nav_msgs/MapMetaData:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:roadmap/ObPixels:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" NAME_WE)
add_custom_target(_roadmap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roadmap" "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roadmap
)
_generate_msg_cpp(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roadmap
)

### Generating Services

### Generating Module File
_generate_module_cpp(roadmap
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roadmap
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roadmap_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roadmap_generate_messages roadmap_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_cpp _roadmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_cpp _roadmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roadmap_gencpp)
add_dependencies(roadmap_gencpp roadmap_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roadmap_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roadmap
)
_generate_msg_eus(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roadmap
)

### Generating Services

### Generating Module File
_generate_module_eus(roadmap
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roadmap
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roadmap_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roadmap_generate_messages roadmap_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_eus _roadmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_eus _roadmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roadmap_geneus)
add_dependencies(roadmap_geneus roadmap_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roadmap_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roadmap
)
_generate_msg_lisp(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roadmap
)

### Generating Services

### Generating Module File
_generate_module_lisp(roadmap
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roadmap
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roadmap_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roadmap_generate_messages roadmap_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_lisp _roadmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_lisp _roadmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roadmap_genlisp)
add_dependencies(roadmap_genlisp roadmap_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roadmap_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roadmap
)
_generate_msg_nodejs(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roadmap
)

### Generating Services

### Generating Module File
_generate_module_nodejs(roadmap
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roadmap
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roadmap_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roadmap_generate_messages roadmap_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_nodejs _roadmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_nodejs _roadmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roadmap_gennodejs)
add_dependencies(roadmap_gennodejs roadmap_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roadmap_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roadmap
)
_generate_msg_py(roadmap
  "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roadmap
)

### Generating Services

### Generating Module File
_generate_module_py(roadmap
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roadmap
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roadmap_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roadmap_generate_messages roadmap_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/GridInfo.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_py _roadmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/roadmap/msg/ObPixels.msg" NAME_WE)
add_dependencies(roadmap_generate_messages_py _roadmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roadmap_genpy)
add_dependencies(roadmap_genpy roadmap_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roadmap_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roadmap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roadmap
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(roadmap_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roadmap_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roadmap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roadmap
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(roadmap_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roadmap_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roadmap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roadmap
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(roadmap_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roadmap_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roadmap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roadmap
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(roadmap_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roadmap_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roadmap)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roadmap\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roadmap
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(roadmap_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roadmap_generate_messages_py std_msgs_generate_messages_py)
endif()
