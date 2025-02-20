alias apt-up='sudo apt-get update && sudo apt-get upgrade'
alias rm='rm -iv'
alias rmr='rm -ivr'

#PS1="\[\033[1;35m\]<\u@\h \w> \$\[\033[0m\]"
#export PS1
alias ll="ls -lah"

# Define colors
GREEN="\[\033[1;32m\]"
RESET="\[\033[0m\]"

# Function to get the current Git branch
parse_git_branch() {
  git branch 2>/dev/null | sed -n '/\* /s///p'
}

# Update PS1 to include Git branch and green color
PS1="${GREEN}<\u@\h \w>\$(if [ -d .git ] || git rev-parse --is-inside-work-tree 2>/dev/null; then echo ' [$(parse_git_branch)]'; fi) \$${RESET} "
