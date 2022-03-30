#!/bin/bash

# Changing directories
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'

# Modified terminal commands
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'

# LL
alias ls='ls -aFH --color=auto'
alias ll='ls -Fls'
alias l='ls -Fls'

# Git aliases
alias branch='git branch'
alias b='branch'

alias status='git status'
alias s='status'

alias branchstatus='b; s'
alias bs='branchstatus'

# Aliases chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Search command line history
alias h='history | grep '

# Search running processes
alias p='ps aux | grep '
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Search files in the current folder
alias f='find . | grep '

# Check if command is aliased, a file, or a built-in command
alias checkcommand='type -t'

# SSH in execute mode and quiet mode.
alias ssh='ssh -Xq'
