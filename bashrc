# .bashrc
# Unlike earlier versions, Bash4 sources your bashrc on non-interactive shells.
# The line below prevents anything in this file from creating output that will
# break utilities that use ssh as a pipe, including git and mercurial.
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions for all shells
GIT_STATUS="__git_ps1"
PS1='[\u@\h:\w]$($GIT_STATUS)\$ '
alias ta="tmux attach"
alias td="tmux detach"
