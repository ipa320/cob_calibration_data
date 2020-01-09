#!/bin/bash
export PYTHONPATH=/opt/ros/$ROS_DISTRO/lib/python2.7/dist-packages
for x in $(find "$TARGET_REPO_PATH" -name '*.xacro'); do
    echo "Testing $x"
    /opt/ros/$ROS_DISTRO/lib/xacro/xacro --inorder "$x" > /dev/null
done
