#!/bin/bash

# Killing F1_Tenth_Simulator
echo "Killing F1_Tenth_Simulator"
pkill -f "F1Tenth_Simulator_Linux.x86_64"

# Killing Audubon Unity
echo "Killing Audubon Unity"
pkill -f "roslaunch audubon_unity audubon_unity.launch"

#Killing Roscore
echo "Killing roscore"
killall -9 roscore

#Killing Rosmaster 
echo "Killing rosmaster"
killall -9 rosmaster