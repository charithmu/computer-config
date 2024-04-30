# symlink this file to the home directory, See README.md

export MYCONFIG_DIR=/home/charith/dev/computer-config/

source $MYCONFIG_DIR/bashmod_common.sh

alias emods='subl $MYCONFIG_DIR/bashmod_focal2004.sh'

# CUDA
export PATH=/usr/local/cuda-12.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Switch CUDA
# function cuda121() { \
# PATH=$(echo "$PATH" | sed 's/cuda-12.3/cuda-12.1/g'); \
# LD_LIBRARY_PATH=$(echo "$LD_LIBRARY_PATH" | sed 's/cuda-12.3/cuda-12.1/g'); \
# echo $PATH; \
# echo $LD_LIBRARY_PATH; }


## ROS
export ROS1_INSTALL_PATH=/opt/ros/noetic

alias sros1='source ${ROS1_INSTALL_PATH}/setup.bash'
alias sros1ws='source /home/charith/dev/ROS/ros1ws/devel/setup.bash'

alias checkros='printenv | grep ROS'
alias checkrosmasteruri='echo $ROS_MASTER_URI'
alias checkrosip='echo $ROS_IP'
alias checkroshostname='echo $ROS_HOSTNAME'

function checkrosnetwork() {
	checkrosmasteruri;
	checkrosip;
	checkroshostname;
}

function killgazebo() { killall -9 gzclient; killall -9 gzserver; }


# Force Nvidia
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
alias nvidiaon='export __NV_PRIME_RENDER_OFFLOAD=1; export __GLX_VENDOR_LIBRARY_NAME=nvidia'

## Humantech Project
source $MYCONFIG_DIR/bashmod_humantech.sh






