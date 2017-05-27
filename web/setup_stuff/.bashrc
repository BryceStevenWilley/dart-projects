PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\] \[\033[1;35m\]\t\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Sets the editor for use in matlab
export EDITOR=vim

# Sets the Path directory to contain the official 421 yalnix program and 412 code check 1 for lab 1.
export PATH=$PATH:/clear/courses/comp421/pub/bin/:/clear/courses/comp412/students/lab1/code_check_1

alias bc='bc -l'
alias cmdmatlab='matlab -nodesktop -nosplash'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
