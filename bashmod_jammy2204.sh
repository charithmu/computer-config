## CUSTOM PERSONAL CONFIGURATIONS ##

############################ Common Aliases ##############################

alias cc='clear'
alias lx='ls -F -SX -g -a'
alias sbash='source ~/.bashrc'
alias ebash='subl ~/.bashrc'
alias emods='subl ~/dev/bash-mods-jammy.sh'

############################ ROS ##############################

# Source ROS2
alias sros='source /opt/ros/humble/setup.bash'
# sros

# Colcon
export _colcon_cd_root=/opt/ros/humble/ 
source /usr/share/colcon_cd/function/colcon_cd.sh
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

# export ROS_MASTER_URI=http://192.168.0.100:11311
# export ROS_IP=192.168.0.200

# export ROS_DOMAIN_ID=<your_domain_id>

alias rosmasteruri='echo $ROS_MASTER_URI'
alias rosip='echo $ROS_IP'
alias checkros='printenv | grep ROS'

function killgazebo() { killall -9 gzclient; killall -9 gzserver; }

############################ CUDA ##############################

export PATH=/usr/local/cuda-12.4/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# __nv_prime_render_offload=1 __glx_vendor_library_name=nvidia 
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __GLX_VENDOR_LIBRARY_NAME=nvidia

alias nvidiaon='export __NV_PRIME_RENDER_OFFLOAD=1; export __GLX_VENDOR_LIBRARY_NAME=nvidia'
# nvidiaon

############################ Dev Configs ##############################

# PWD
# cd /home/charith/dev

alias cdrosws='cd ~/dev/ROS/ros2ws'

function sros1() { unset PYTHONPATH; mamba activate ros_env; }
function colconcc() { rm -r build/ log/ install/; }
function srosws2() { source install/setup.bash; }