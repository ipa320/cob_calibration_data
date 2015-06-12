cmake_minimum_required(VERSION 2.8.3)
project(cob_calibration_data)

find_package(catkin REQUIRED )

catkin_package()

set(robotlist
    cob3-2
    cob3-6
    cob3-9
    cob4-1
    cob4-2
    cob4-4
    cob4-6
    raw3-1
    raw3-2
    raw3-3
    raw3-4
    raw3-5
    raw3-6
)

foreach(robot ${robotlist})
    install(DIRECTORY ${robot}/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${robot}
    )
endforeach()
