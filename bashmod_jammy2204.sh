## Ubuntu 22.04 (Jammy) CUSTOM PERSONAL CONFIGURATIONS ##

# symlink this file to the home directory and source in ~/.bashrc, See README.md

############################ Common Aliases and Other ##############################

export MYCONFIG_DIR=/home/charith/dev/computer-config/
source $MYCONFIG_DIR/bashmod_common.sh

alias emods='subl $MYCONFIG_DIR/bashmod_jammy2204.sh'

############################ CUDA ##############################

export PATH=/usr/local/cuda-12.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

############################ ROS ##############################

export ROS2_INSTALL_PATH=/opt/ros/humble

# Source ROS2
alias sros='source /opt/ros/humble/setup.bash'
alias cdrosws='cd ~/dev/ROS/ros2_ws'

function sws() { source install/setup.bash; }
function sros1() { unset PYTHONPATH; mamba activate ros_env; }

# export ROS_MASTER_URI=http://192.168.0.100:11311
# export ROS_IP=192.168.0.200
# export ROS_DOMAIN_ID=<your_domain_id>

############################ Colcon ##############################

export colcon_ws=/home/charith/dev/colcon_from_source

source $colcon_ws/install/setup.bash

export _colcon_cd_root=/opt/ros/humble/ 
source $colcon_ws/src/colcon-cd/function/colcon_cd.sh
source $colcon_ws/src/colcon-argcomplete/completion/colcon-argcomplete.bash

function colconcc() { sudo rm -r build/ log/ install/; }
alias colconb='colcon build --symlink-install --event-handlers compile_commands+'
alias colconbv='colcon build --symlink-install --event-handlers compile_commands+ console_cohesion+'

############################ PX4 ##############################

alias ddsagent='MicroXRCEAgent udp4 -p 8888'
alias px4dev='cd /home/charith/dev/px4_dev/ws_px4dev'


############################ Dev Configs ##############################

# PWD
# cd /home/charith/dev
sros

export LD_LIBRARY_PATH=/usr/bin:$LD_LIBRARY_PATH


