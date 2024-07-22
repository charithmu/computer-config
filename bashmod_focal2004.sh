## Ubuntu 20.04 (Focal) CUSTOM PERSONAL CONFIGURATIONS ##

# symlink this file to the home directory and source in ~/.bashrc, See README.md

############################ Common Aliases and other ##############################

# export COMPUTER_CONFIG_DIR=/home/charith/dev/computer-config/
source $COMPUTER_CONFIG_DIR/bashmod_common.sh

alias emods='subl $COMPUTER_CONFIG_DIR/bashmod_focal2004.sh'

################# CUDA ###########################

export PATH=/usr/local/cuda-12.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

############################ ROS ##############################

export ROS1_INSTALL_PATH=/opt/ros/noetic

# Source ROS1
alias sros1='source ${ROS1_INSTALL_PATH}/setup.bash'
# Source current workspace
alias srosws='source $(catkin locate -d)/setup.bash'

alias cdros1ws='cd ~/dev/ROS/ros1_ws'
alias sros1ws='source /home/charith/dev/ROS/ros1ws/devel/setup.bash'

# export ROS_MASTER_URI=http://192.168.0.100:11311
# export ROS_IP=192.168.0.200

############################ Dev Configs ##############################

## Humantech Project
source $COMPUTER_CONFIG_DIR/bashmod_humantech.sh

# PWD
# cd /home/charith/dev

## Mouse lag fix
# sudo sh -c 'echo N > /sys/module/drm_kms_helper/parameters/poll'
# sudo sh -c 'echo "options drm_kms_helper poll=0" >> /etc/modprobe.d/local.conf'
# sudo update-initramfs -u
# Append to /etc/environment
# MUTTER_DEBUG_ENABLE_ATOMIC_KMS=0
# MOZ_ENABLE_WAYLAND=1
# chrome://flags/#ozone-platform-hint
# 


