# Common bash helpers

############################ Common Aliases ##############################
alias cc='clear'
alias lx='ls -F -SX -g -a'
alias sbash='source ~/.bashrc'
alias ebash='subl ~/.bashrc'

alias l='ls -F1SX'
alias ll='ls -F -SX -g'

# Docker
alias dcc='docker rm $(docker ps -aq)'
alias dll='docker ps -a'
alias dm='docker images'