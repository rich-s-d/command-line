alias apt-up='sudo apt-get update && sudo apt-get upgrade'
alias rm='rm -iv'
alias rmrf='rm -ivrf'

PS1="\[\033[s\033[0;0H\033[0;41m\033[K\033[1;33m\t\033[0m\033[u\]<\u@\h\W>\$ "

# for .bashrc
PS1="\[\033[1;35m\]<\u@\h \w> \$\[\033[0m\]"
export PS1
alias ll="ls -lah"
