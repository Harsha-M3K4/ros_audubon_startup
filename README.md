# ros_audubon_startup
This is a script to start the roscore and audubon unity using a single command

DISCLAIMER: PLEASE DO YOUR DUE DILIGENCE AND UNDERSTAND THE CODE BEFORE RUNNING IT! ALTHOUGH CARE HAS BEEN TAKEN TO MINIMIZE FATAL ERRORS FROM OCCURING, SOMETIMES BUGS ARE POSSIBLE! I AM NOT RESPONSIBLE IF ANYTHING ISN'T WORKING AS EXPECTED! I PERFORMED EXTENSIVE TESTS ON NATIVE INSTALLATION BUT I'M LIMITED TO TESTING ON MACS AND VM'S. PLEASE RAISE AN ISSUE WITH DETAILED DECRIPTION OF THE SAME SO THAT I CAN MAKE CHANGES TO THE CODE. HAPPY CODING!



INTRODUCTION:
  
  This is a Bash script, a type of script used for running commands in the Linux operating system. Bash scripts are text files containing a series of commands. These scripts are executed in sequence to automate repetitive command-line tasks.

SCRIPT DESCRIPTION:
  
  This script is designed to initialize a system by starting a couple of services. It's intended to be run in a Virtual Machine (VM). The VM_STARTUP.sh script starts two services: roscore and audubon_unity.launch, WHILE the STARTUP.sh starts the roscore, audubon_unity and also the simulator.

HOW THE SCRIPT WORKS:
  
  The script starts by running roscore in the background. The & at the end of the command means that roscore will run in the background, allowing the script to continue to the next command without waiting for roscore to finish.
    
  The script then pauses for 4 seconds using the sleep command. This is to ensure that roscore has enough time to start up.
    
  Next, the script opens a new terminal tab and runs the roslaunch audubon_unity audubon_unity.launch command. This starts the audubon_unity.launch service. The gnome-terminal --tab -- bash -c part of the command is used to open a new terminal tab and run a command in it.
    
  Finally, the script pauses for another 4 seconds to ensure that the audubon_unity.launch service has time to start up.

HOW TO USE THE SCRIPT:-
  
  Pre-requisite:
  1). Open your terminal and copy paste the following commands:
        
        sudo nano ~/.bashrc
    
  2). Scroll to the end of the file and copy paste the following line:
  
        source home/cse4568/catkin_ws/devel/setup.bash
  
  3). Press ctrl+S to save and ctrl+x to exit.
  4). Restart your VM for the above additions to take effect.
  NOTE: AFTER PERFORMING THE PREREQUISITE YOU NEED NOT RUN THE SOURCE DEVEL/SETUP.BASH COMMAND EVERY TIME YOU OPEN A NEW TERMINAL.


 For VM Users:    
  1). Start your VM.
  2). Download and save the appropriate version of the startup.sh script and save it in your HOME DIRECTORY.
  3). Open GNMONE TERMINAL. DO NOT USE TERMINATOR TERMINAL. The script doesn't run properly in TERMINATOR terminal. TERMINATOR runs differently than GNOME TERMINAL
  4). From  your home directory run the following command:
  
        ./startup.sh
  5). Wait for the roscore and audubon unity to be launched.
  6). Now run your Simulator from Windows OS and watchout for the "CONNECTED TO HOST" message.
  7). After your work is done run the following commands:

        killall -9 roscore
        killall -9 rosmaster
  NOTE: If you face an error saying that ROSMASTER is already active try running the above commands and re-run the .sh file.


For Native Linux Users:
        
  1). Download the native_startup.sh file in your home directory.
  2). NOTE: You might need to update the directory as per you system. just replace the <> <> with your folder names
  3). After completing the PREREQUISITE run the native_startup.sh file from your home directory using GNOME TERMINAL.
  4). Wait for the processes to finish.
  5). Start with your work!
  6). After your work is done remember to run the following commands:
  
        killall -9 roscore
        killall -9 rosmaster
  NOTE: If you face an error saying that ROSMASTER is already active try running the above commands and re-run the .sh file.


For MACUSERS:-
  
SAME AS VM USERS:
  1). Start your VM.
  2). Download and save the appropriate version of the startup.sh script and save it in your HOME DIRECTORY.
  3). Open GNMONE TERMINAL. DO NOT USE TERMINATOR TERMINAL. The script doesn't run properly in TERMINATOR terminal. TERMINATOR runs differently than GNOME TERMINAL
  4). From  your home directory run the following command:

              ./startup.sh
              
  5). Wait for the roscore and audubon unity to be launched.
  6). Now run your Simulator from Windows OS and watchout for the "CONNECTED TO HOST" message.
  7). After your work is done run the following commands:
              
              killall -9 roscore
              killall -9 rosmaster
   NOTE: If you face an error saying that ROSMASTER is already active try running the above commands and re-run the .sh file.

I'm not sure as of now the ROS is setup for MACOS I be happy if someone can test it and let me know the results by raising an issue! I'll try my best to rectify the code ASAP.

MAKE ALL THE FILES EXECUTABLES USING A SINGLE COMMAND:

STEPS:
    1). Clone into the Github Repo of you assignment. cd into that folder and the run the below given command:
    
              sudo chmod -R 700 .

NOTE: The . here works in the same way when you want to launch VS Code from a particular direcctory.
 
