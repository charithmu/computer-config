## COMMON CUSTOM PERSONAL CONFIGURATIONS ##

############################ Common Aliases ##############################
alias cc='clear'
alias lx='ls -F -SX -g -a'
alias sbash='source ~/.bashrc'
alias ebash='subl ~/.bashrc'
alias aptup='sudo apt update'
alias aptupg='sudo apt upgrade'

alias l='ls -F1SX'
alias ll='ls -F -SX -g'

############################ Docker ##############################

alias dcc='docker rm $(docker ps -aq)'
alias dll='docker ps -a'
alias dm='docker images'

############################ CUDA/NVIDIA ##############################


alias nvidiaon='export __NV_PRIME_RENDER_OFFLOAD=1; export __GLX_VENDOR_LIBRARY_NAME=nvidia'

## Switch CUDA
# cuda_switch 12.3 12.1
function cuda_switch() {
	old_version=$1
	new_version=$2

	PATH=$(echo "$PATH" | sed "s/cuda-$old_version/cuda-$new_version/g")
	LD_LIBRARY_PATH=$(echo "$LD_LIBRARY_PATH" | sed "s/cuda-$old_version/cuda-$new_version/g")

	echo $PATH
	echo $LD_LIBRARY_PATH
}

############################ ROS ##############################

alias checkros='printenv | grep ROS'
alias checkrosmasteruri='echo $ROS_MASTER_URI'
alias checkrosip='echo $ROS_IP'
alias checkroshostname='echo $ROS_HOSTNAME'

function checkrosnetwork() {
	checkrosmasteruri;
	checkrosip;
	checkroshostname;
}

function scatkin() {
	setup_script="$(catkin locate -d)/setup.bash"
	echo "Sourcing: $setup_script"
  	source $setup_script
}

function killgazebo() { killall -9 gzclient; killall -9 gzserver; }