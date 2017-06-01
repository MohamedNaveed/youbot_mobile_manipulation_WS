# CMake generated Testfile for 
# Source directory: /home/ros/catkin_ws/src/ork/src/object_recognition_core/test
# Build directory: /home/ros/catkin_ws/build/ork/src/object_recognition_core/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(object_recognition_core_test_import.py "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/src/ork/src/object_recognition_core/test/test_import.py")
ADD_TEST(object_recognition_core_test_config.py "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/src/ork/src/object_recognition_core/test/test_config.py")
ADD_TEST(object_recognition_core_help_/home/ros/catkin_ws/src/ork/src/object_recognition_core/test/../apps/detection "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/test_help.py /home/ros/catkin_ws/src/ork/src/object_recognition_core/test/../apps/detection")
ADD_TEST(object_recognition_core_help_/home/ros/catkin_ws/src/ork/src/object_recognition_core/test/../apps/training "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/test_help.py /home/ros/catkin_ws/src/ork/src/object_recognition_core/test/../apps/training")
ADD_TEST(object_recognition_core_source_OpenNI "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/test_source.py OpenNI object_recognition_core.io {}")
ADD_TEST(object_recognition_core_sink_GuessCsvWriter "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/test_sink.py GuessCsvWriter object_recognition_core.io {}")
ADD_TEST(object_recognition_core_/home/ros/catkin_ws/src/ork/src/object_recognition_core/test/detection.test.ork "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/ros/catkin_ws/devel/setup.sh" "/home/ros/catkin_ws/devel/share/object_recognition_core/cmake/../test/test_config.py -c /home/ros/catkin_ws/src/ork/src/object_recognition_core/test/detection.test.ork")
SUBDIRS(db)
