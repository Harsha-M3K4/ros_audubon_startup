#!/bin/bash

# Start and Launches roscore in the background
echo "Starting roscore"
roscore & 

# Sleep for a bit to ensure that roscore has time to start up
sleep 4

# Open a new tab and launches audubon_unity
gnome-terminal --tab -- bash -c "roslaunch audubon_unity audubon_unity.launch; exec bash" 

# Sleep for a bit to ensure that the previous command has time to start up
sleep 4

# Open a new tab, go to the directory and run the file
gnome-terminal --tab --working-directory="/home/<user_name>/Desktop/F1Tenth_Simulator_Linux" -- bash -c "cd /home/<user_name>/Desktop/F1Tenth_Simulator_Linux && ./F1Tenth_Simulator_Linux.x86_64; exec bash" #Launches F1Tenth_Simulator_Linux.x86_64 in a new terminal tab
