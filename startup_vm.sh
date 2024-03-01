#!/bin/bash
#My aim is to reduce the amount of time we spend to initailize the system.
#This script is to be run in the VM. It will start roscore and then launch the audubon_unity.launch file.
#It is also adviced to add this line in .bashrc file so that you need not source the catkin_ws/devel/setup.bash file every time you open a new terminal.
#Run this script and then start your Unity application in Windows.

# Start roscore
roscore & #Launches roscore in the background

# Sleep for a bit to ensure that roscore has time to start up
sleep 4 #Sleeps/waits for 4 seconds

# Open a new tab and roslaunch audubon_unity audubon_unity.launch
gnome-terminal --tab -- bash -c "roslaunch audubon_unity audubon_unity.launch; exec bash" #Launches audubon_unity.launch in a new terminal tab
