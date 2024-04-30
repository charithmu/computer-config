# Humantech Project
export HUMANTECH_DIR=/home/charith/dev/humantech_dev

# alias sshjackal_w='ssh administrator@192.168.1.30'
# alias sshjackal_e='ssh administrator@192.168.0.100'
alias sshjackal='ssh administrator@somerville'

# function rosmaster_e() { export ROS_MASTER_URI=http://192.168.0.100:11311; export ROS_IP=192.168.0.200; checkrosnetwork(); }
# function rosmaster_w() { export ROS_MASTER_URI=http://192.168.1.30:11311; export ROS_IP=192.168.1.10; checkrosnetwork(); }
function rosmasterrobot() { export ROS_MASTER_URI=http://somerville:11311; export ROS_HOSTNAME=charithdev; checkrosnetwork; }
function rosmasterlocal() { export ROS_MASTER_URI=http://localhost:11311; unset ROS_IP; checkrosnetwork; }

# export ROS_MASTER_URI=http://192.168.0.100:11311
# export ROS_IP=192.168.0.200

# JACKAL Specific env variables
export JACKAL_JOY_DEVICE=/dev/input/js0

alias cdjackal='cd ~/dev//humantech_dev/jackal_original'
alias sjackal='source ~/dev/humantech_dev/jackal_original/devel/setup.bash'

alias cdnaska='cd ~/dev//humantech_dev/naska_jackal'
alias snaska='source ~/dev/humantech_dev/naska_jackal/devel/setup.bash'

alias smain='source ~/dev/humantech_dev/mainws/devel/setup.bash'

alias simjackal='roslaunch scaled_jackal sim_jackal.launch'
alias vizjackal='roslaunch sr_robot view_jackal.launch'
alias remotejackal='roslaunch sr_robot view_remote_jackal.launch'

alias keycontrolremote='rosrun teleop_twist_keyboard teleop_twist_keyboard.py /cmd_vel:=/key/cmd_vel'
alias keycontrolsim='rosrun teleop_twist_keyboard teleop_twist_keyboard.py'

# =============================

# rosmasterlocal
# rosmasterrobot
sros1
# snaska
# nvidiaon