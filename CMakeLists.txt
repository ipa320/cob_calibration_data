cmake_minimum_required(VERSION 3.0.2)
project(cob_calibration_data)

find_package(catkin REQUIRED COMPONENTS cob_supported_robots)

catkin_package()

foreach(robot ${cob_supported_robots_ROBOTLIST})
   install(DIRECTORY ${robot}
     DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
   )
endforeach()
