#!/bin/bash
for x in $(find "$TARGET_REPO_PATH" -name '*.xacro'); do
    echo "Testing $x"
    /opt/ros/$ROS_DISTRO/lib/xacro/xacro --inorder "$x" > /dev/null
done
