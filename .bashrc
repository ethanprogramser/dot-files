#~/.bashrc
#

grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[0m\]'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=yes'
alias grep='grep --color=auto'
PS1='\[\033[0;37m\]\u@\h [\W] >>>\[\033[0;31m '
#PS1='\[\033[1;37m\]\u@\h [\N] >>>\[\033[1;31m]'
