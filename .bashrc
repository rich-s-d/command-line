alias apt-up='sudo apt-get update && sudo apt-get upgrade'
alias rm='rm -iv'
alias rmr='rm -ivr'

#PS1="\[\033[1;35m\]<\u@\h \w> \$\[\033[0m\]"
#export PS1
alias ll="ls -lah"

# Define colors
GREEN="\[\033[1;32m\]"
RESET="\[\033[0m\]"

# Load Git prompt (this is included with Git)
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    source /usr/share/git-core/contrib/completion/git-prompt.sh
elif [ -f /etc/bash_completion.d/git-prompt ]; then
    source /etc/bash_completion.d/git-prompt
fi

# Update PS1 to show Git branch dynamically
PS1="${GREEN}<\u@\h \w>\$(__git_ps1 ' [%s]') \$${RESET} "
