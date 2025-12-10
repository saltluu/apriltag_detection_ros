#!/bin/bash


mkdir apriltag_ws
cd apriltag_ws/
mkdir src
cd src 
git clone https://github.com/saltluu/apriltag_detection_ros.git --recurse-submodules 
sudo pip install -U rosdep 
sudo rosdep init
rosdep update
cd .. 
rosdep install --from-paths src --ignore-src -r -y 
sudo apt-get install ros-${ROS_DISTRO}-image-proc 
sudo apt-get install ros-kilted-cv-bridge
. /opt/ros/kilted/setup.bash
colcon build --symlink-install 

