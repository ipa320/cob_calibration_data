# http://ros.org/doc/groovy/api/catkin/html/user_guide/supposed.html
cmake_minimum_required(VERSION 2.8.3)
project(cob_calibration_data)


find_package(catkin REQUIRED )

# rostest for robots
SET(robotlist
cob3-3
cob3-5
cob3-6
cob3-7
cob3-8
cob4-1
cob4-2
raw3-1
raw3-2
raw3-3
raw3-4
raw3-5
raw3-6
desire
)

# include_directories(include ${Boost_INCLUDE_DIR} ${catkin_INCLUDE_DIRS})
# TODO: fill in what other packages will need to use this package
## DEPENDS: system dependencies of this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## INCLUDE_DIRS: 
## LIBRARIES: libraries you create in this project that dependent projects also need
catkin_package(
    DEPENDS  # TODO
    CATKIN_DEPENDS # TODO
    INCLUDE_DIRS # TODO include
    LIBRARIES # TODO
)

FOREACH(robot ${robotlist})
    install(DIRECTORY ${robot}/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${robot}
    )
ENDFOREACH(robot)
