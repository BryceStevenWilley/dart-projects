# Old prompt
# PS1="[\t  \u@\h:\w] "

# sets the prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\] \[\033[1;35m\]\t\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] '
case `id -u` in
	0) PS1="${PS1}# ";;
	*) PS1="${PS1}$ ";;
esac

# Sets the editor for use in matlab
export EDITOR=vim

# Sets the Path directory to contain the official 421 yalnix program and 412 code check 1 for lab 1.
export PATH=$PATH:/clear/courses/comp421/pub/bin/:/clear/courses/comp412/students/lab1/code_check_1

shopt -s histappend  
PROMPT_COMMAND='history -a'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias bc='bc -l'
alias cmdmatlab='matlab -nodesktop -nosplash'
